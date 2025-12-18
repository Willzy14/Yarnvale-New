// Yarnvale Service Worker - enables offline play and PWA installation
const CACHE_NAME = 'yarnvale-v22';
const urlsToCache = [
  './',
  './index.html',
  './manifest.json'
];

// Install event - cache core files
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        console.log('Yarnvale: Caching app files');
        return cache.addAll(urlsToCache);
      })
      .then(() => self.skipWaiting())
  );
});

// Activate event - clean up old caches
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheName !== CACHE_NAME) {
            console.log('Yarnvale: Removing old cache', cacheName);
            return caches.delete(cacheName);
          }
        })
      );
    }).then(() => self.clients.claim())
  );
});

// Fetch event - serve from cache, fallback to network
self.addEventListener('fetch', event => {
  const request = event.request;
  const url = new URL(request.url);
  const isNavigation = request.mode === 'navigate' || request.destination === 'document';
  const isIndexRequest = url.pathname.endsWith('/') || url.pathname.endsWith('/index.html');

  if (isNavigation || isIndexRequest) {
    event.respondWith(
      fetch(request)
        .then(response => {
          if (response && response.status === 200 && request.method === 'GET') {
            const responseToCache = response.clone();
            caches.open(CACHE_NAME).then(cache => cache.put('./index.html', responseToCache));
          }
          return response;
        })
        .catch(() => caches.match('./index.html'))
    );
    return;
  }

  event.respondWith(
    caches.match(request)
      .then(response => {
        if (response) {
          return response;
        }
        return fetch(request).then(response => {
          if (!response || response.status !== 200 || request.method !== 'GET') {
            return response;
          }
          const responseToCache = response.clone();
          caches.open(CACHE_NAME).then(cache => {
            cache.put(request, responseToCache);
          });
          return response;
        });
      })
      .catch(() => caches.match('./index.html'))
  );
});
