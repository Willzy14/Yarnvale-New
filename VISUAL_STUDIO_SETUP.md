# Visual Studio Setup Guide for Yarnvale

This document explains how to open and work with the Yarnvale project in Visual Studio.

## Prerequisites

- **Visual Studio 2022** (or later) with the "ASP.NET and web development" workload installed
- **.NET 8.0 SDK** or later

## Opening the Project

1. Launch Visual Studio
2. Click **File → Open → Project/Solution**
3. Navigate to the Yarnvale project folder
4. Select the `Yarnvale.sln` file
5. Click **Open**

## Running the Project

### Option 1: Using Visual Studio's Built-in Web Server

1. Once the solution is open, press **F5** or click the green **▶ Start** button
2. Visual Studio will start a local web server
3. Your default browser will open automatically to `http://localhost:5000`
4. The game should load and be playable

### Option 2: Using IIS Express

1. In the toolbar, select **IIS Express** from the dropdown next to the Start button
2. Press **F5** or click the **▶ Start** button
3. The game will open in your default browser

### Option 3: Open HTML Directly

If you prefer not to run a web server:

1. Right-click on `index.html` in the Solution Explorer
2. Select **Open With**
3. Choose your preferred web browser
4. Click **OK**

**Note:** Some features (like service workers) may not work when opening the HTML file directly without a web server.

## Project Structure

```
Yarnvale/
├── Yarnvale.sln              # Visual Studio solution file
├── Yarnvale.csproj           # Project file
├── Program.cs                # Web server configuration
├── Properties/
│   └── launchSettings.json   # Launch configuration
├── index.html                # Main game file
├── manifest.json             # PWA manifest
├── sw.js                     # Service worker for offline support
├── README.md                 # Game documentation
├── FUTURE_PLANS.md          # Development roadmap
├── Yarnvale Assets/         # Game assets (images, audio)
└── [Version history files]   # Previous versions of the game

```

## Editing Files

### HTML Files
- Double-click any `.html` file in Solution Explorer to open it in the editor
- Visual Studio provides IntelliSense for HTML, CSS, and JavaScript

### JavaScript
- The game logic is embedded in `index.html` within `<script>` tags
- You can extract JavaScript to separate `.js` files if preferred

### Assets
- Images and audio files are in the `Yarnvale Assets` folder
- You can add new assets by right-clicking the folder and selecting **Add → Existing Item**

## Tips for Development

### Live Reload
- When running with F5 (Debug mode), you can edit files and refresh the browser to see changes
- For automatic refresh, consider using browser extensions like "Live Server"

### Debugging JavaScript
1. Run the project with F5
2. Open Browser Developer Tools (F12 in most browsers)
3. Set breakpoints in the Console or Sources tab
4. Use `console.log()` statements for debugging

### Version Control
- The `.gitignore` file is configured to exclude Visual Studio temporary files
- Commit your changes using Visual Studio's Git integration (View → Git Changes)

## Troubleshooting

### "The project doesn't build"
- This is a static web project - there's no compilation step
- You can ignore build warnings and run the project directly with F5

### "Port already in use"
- Change the port in `Properties/launchSettings.json`
- Update the `applicationUrl` to use a different port (e.g., `http://localhost:5001`)

### "Service worker not working"
- Service workers require HTTPS or localhost
- Make sure you're running via the web server (F5) not opening the HTML directly

## Alternative: Using Live Server

If you prefer a simpler setup:

1. Install the "Live Server" extension in Visual Studio or VS Code
2. Right-click `index.html` and select "Open with Live Server"
3. The game will open with automatic reload on file changes

## Support

For game-specific documentation, see:
- `README.md` - Game features and controls
- `FUTURE_PLANS.md` - Development roadmap

For Visual Studio help:
- [Visual Studio Documentation](https://docs.microsoft.com/en-us/visualstudio/)
- [ASP.NET Core Web Apps](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-app)
