# Yarnvale Future Plans (Delivery: Dec 25, 2025)

This roadmap focuses on richer story, events, and replayable loops to ship a “cozy, content-rich” build by Dec 25. Asset improvements (sprites/UI/icons) are tracked separately in `ASSET_WISHLIST.md` and can arrive in parallel.

---
## High-Level Goals
- Guide the player through a memorable arc: Welcome → Loom legend → Festival of Threads finale.
- Add replayable loops: daily/weekly orders, mini-games, friendship perks, event rewards.
- Deepen the world: new biomes, landmarks, props, and small-set stories.
- Keep it mobile-friendly, low-friction (no starvation, quick sessions).

## Timeline (Dec 8 → Dec 25)
- **Phase 1 (Dec 8–12):** Story spine, onboarding refresh, new quests, fast travel, daily orders.
- **Phase 2 (Dec 13–18):** New content beats (festival arc, hermit arc), mini-games, pen upgrades.
- **Phase 3 (Dec 19–22):** Biome polish (wetlands/snowy highlands), economy tuning, accessibility/settings.
- **Phase 4 (Dec 23–25):** QA polish, bug sweep, perf tidy, cache bump, build locks.

## Core Additions
1) **Narrative & Events**
   - Festival of Threads (3 steps): gather dyes/feathers/luxury cloth → decorate square → evening lighting + reward (fast travel voucher/discount).
   - Hermit’s Loom Whisper arc: Old Mosswort gives shard hints; simple cave riddle; loom attunement mini-scene on completion.
   - Beach Shell Song: collect shells for a lullaby gift; unlocks shell crafts discount.
   - Village Heart quests: short arcs for Granny, Felix, Theo, Iris—each grants a perk (discount/recipe/emote).

2) **Systems & Loops**
   - Daily/Weekly Orders board: 2 dailies + 1 weekly with timers; pays gold + friendship.
   - Fast Travel Signposts: unlock on discovery (Farm, Village, Forest, Beach, Mountain); small fee or voucher from festival.
   - Pen Upgrades: tiered capacity and a “decor slot” for passive buff (e.g., +10% wool yield when decorated).
   - Friendship Perks: thresholds unlock shop discounts or unique recipes (e.g., dye bundle from Iris, luxury pattern from Theo).
   - Autosave on map transition + manual save.

3) **Mini-Games (lightweight)**
   - Loom Attune: timed taps to align threads (reward: +1 crafted output for next 3 crafts).
   - Fishing Lite (Beach): hold-and-release timing bar for shells/fish trinkets (feeds crafts/sales).
   - Knitting Sprint: short timing loop to “perfect” an item for +1 value.

4) **World & Biomes**
   - New sub-biome: **Wetlands** (small map) with reeds + new dye plant; connects Forest → Mountain.
   - Snowy ridge tiles near Mountain top; place a crystal altar landmark.
   - Props pass: benches, lanterns, signposts, crates, bridges for paths; decorative festival bunting in Village.

5) **Crafting & Economy**
   - New recipes: capes/ponchos (fine wool), plushies (soft fur + dye), banners/lanterns (cloth + resin + dye), shell jewelry set, fishing trinkets.
   - Luxury set: royal scarf/hat/cloak using fine wool + rare dye; higher sell price.
   - Orders economy: tie recipes to daily/weekly requests to showcase new items.

6) **Accessibility & UX**
   - Inventory filters (Materials / Crafted / Quest).
   - Font size toggle (standard/large), colorblind-safe palette for critical UI accents.
   - Controller-friendly prompts (future-proof) and clear touch hints.

---
## Updated Checklist

### World / Maps
- [ ] Fast-travel signposts after discovery (Farm ↔ Village ↔ Forest ↔ Beach ↔ Mountain).
- [ ] Wetlands connector map with reeds + dye plant; snowy ridge landmark near Mountain.
- [ ] Props pass: benches, lanterns, bridges, signposts, festival bunting in Village.

### Animals
- [ ] Llamas: slow shear, fine wool (luxury yarn boost), penned.
- [x] Peacocks: decor feathers; regrow.
- [ ] Optional rabbits: fast soft fur loop.
- [ ] Treat buff (no starvation): next yield bonus.
- [ ] Pen upgrades/capacity tiers; move animals between pens.

### Crafting & Economy
- [x] Dyes (amber/teal); shell crafts; dyed items; luxury socks.
- [ ] New recipes: capes, ponchos, plushies, banners, lanterns, shell jewelry set, fishing trinkets.
- [ ] Luxury “royal” set (fine wool + rare dye).
- [ ] Daily/weekly orders board with timers and rewards.

### Quests & Story
- [ ] Festival of Threads 3-step arc with evening payoff + voucher/discount.
- [ ] Hermit’s loom whisper arc; cave riddle; shard hinting.
- [ ] Beach Shell Song mini-arc (shell collection → lullaby reward).
- [ ] Village Heart mini-quests (Granny/Felix/Theo/Iris) granting perks/recipes.

### Building & Progression
- [ ] Pen construction/upgrades with decor slot buffs.
- [ ] Cottage upgrade hooks: loom corner buff, storage chest, display rack passive.

### Systems / UX
- [x] Task board UI.
- [ ] Inventory filters; large-text toggle; colorblind-safe accent palette.
- [ ] Autosave on map transitions; keep manual save/load.
- [ ] Fast travel menu; controller/touch prompt clarity.

### Performance / Tech
- [ ] Sprite/audio audit; lazy-load ambience.
- [ ] Object pooling/offscreen cleanup for animals/NPCs.
- [ ] Cache bump when assets change (sw.js version).

---
## Success Criteria (Dec 25 build)
- First 15 minutes: guided welcome, shard legend hook, first craft/sell/gift, task board used.
- 30–45 minutes: festival arc active; first pen upgrade; first fast-travel unlock; friendship perk earned.
- 45–60 minutes: wetlands visited; loom attune mini-game; luxury/lamp/banner crafted; daily order completed.
- Replay: daily/weekly orders, mini-games, and fast travel keep sessions snackable.
