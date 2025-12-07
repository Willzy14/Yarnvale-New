# Graphics upgrade script for Yarnvale

$newTiles = @'
function drawTile(t, x, y, targetCtx = ctx) {
  const px = x * TILE_SIZE;
  const py = y * TILE_SIZE;
  if (drawTileFromTileset(t, x, y, targetCtx)) {
    return;
  }

  // Small deterministic variation so grass/path aren't identical
  const variation = (x * 13 + y * 7) % 4;
  const variation2 = (x * 7 + y * 11) % 5;
  
  // Time-based animation offset per tile for natural movement
  const tilePhase = (x * 0.3 + y * 0.5);

  if (t === 0) {
    // GRASS - layered with depth and subtle animation
    const g = targetCtx.createLinearGradient(px, py, px, py + TILE_SIZE);
    g.addColorStop(0, '#3a8f5c');
    g.addColorStop(0.5, '#2d7548');
    g.addColorStop(1, '#1d5035');
    targetCtx.fillStyle = g;
    targetCtx.fillRect(px, py, TILE_SIZE, TILE_SIZE);

    // Grass blade clusters - multiple layers for depth
    targetCtx.save();
    
    // Back layer (darker, shorter)
    targetCtx.strokeStyle = 'rgba(35, 90, 50, 0.7)';
    targetCtx.lineWidth = 1.5;
    for (let i = 0; i < 4; i++) {
      const bx = px + 4 + (i * 8) + (variation * 2);
      const by = py + TILE_SIZE - 4;
      const sway = Math.sin(animationTime * 0.8 + tilePhase + i) * 1.5;
      targetCtx.beginPath();
      targetCtx.moveTo(bx, by);
      targetCtx.quadraticCurveTo(bx + sway, by - 8, bx + sway * 1.2, by - 12);
      targetCtx.stroke();
    }
    
    // Mid layer
    targetCtx.strokeStyle = 'rgba(55, 130, 70, 0.8)';
    targetCtx.lineWidth = 1.2;
    for (let i = 0; i < 5; i++) {
      const bx = px + 2 + (i * 7) + (variation2 * 1.5);
      const by = py + TILE_SIZE - 2;
      const sway = Math.sin(animationTime + tilePhase + i * 0.7) * 2;
      targetCtx.beginPath();
      targetCtx.moveTo(bx, by);
      targetCtx.quadraticCurveTo(bx + sway * 0.5, by - 10, bx + sway, by - 16);
      targetCtx.stroke();
    }
    
    // Front layer (lighter, taller)
    targetCtx.strokeStyle = 'rgba(85, 170, 95, 0.9)';
    targetCtx.lineWidth = 1;
    for (let i = 0; i < 3; i++) {
      const bx = px + 6 + (i * 10) + (variation * 3);
      const by = py + TILE_SIZE;
      const sway = Math.sin(animationTime * 1.2 + tilePhase + i * 1.3) * 2.5;
      targetCtx.beginPath();
      targetCtx.moveTo(bx, by);
      targetCtx.quadraticCurveTo(bx + sway * 0.3, by - 12, bx + sway, by - 18);
      targetCtx.stroke();
    }
    
    // Occasional flower or clover
    if (variation === 2 && variation2 === 3) {
      targetCtx.fillStyle = '#ffeb3b';
      targetCtx.beginPath();
      targetCtx.arc(px + 20, py + 12, 2, 0, Math.PI * 2);
      targetCtx.fill();
    }
    
    targetCtx.restore();

  } else if (t === 1) {
    // PATH - weathered dirt with pebbles and grass edges
    const g = targetCtx.createLinearGradient(px, py, px, py + TILE_SIZE);
    g.addColorStop(0, '#c8a070');
    g.addColorStop(0.3, '#b08850');
    g.addColorStop(0.7, '#a07840');
    g.addColorStop(1, '#907030');
    targetCtx.fillStyle = g;
    targetCtx.fillRect(px, py, TILE_SIZE, TILE_SIZE);

    // Worn center (lighter)
    targetCtx.fillStyle = 'rgba(220, 190, 150, 0.3)';
    targetCtx.fillRect(px + 6, py + 2, TILE_SIZE - 12, TILE_SIZE - 4);

    // Pebbles with shadows
    const pebbles = [[7, 8], [20, 18], [14, 26], [25, 8], [10, 20]];
    pebbles.forEach((p, i) => {
      if ((variation + i) % 3 === 0) {
        targetCtx.fillStyle = 'rgba(40, 25, 15, 0.4)';
        targetCtx.beginPath();
        targetCtx.ellipse(px + p[0] + 1, py + p[1] + 1, 2.5, 1.5, 0, 0, Math.PI * 2);
        targetCtx.fill();
        targetCtx.fillStyle = 'rgba(90, 70, 50, 0.7)';
        targetCtx.beginPath();
        targetCtx.ellipse(px + p[0], py + p[1], 2, 1.5, 0, 0, Math.PI * 2);
        targetCtx.fill();
      }
    });

    // Grass tufts at edges
    targetCtx.strokeStyle = 'rgba(60, 120, 60, 0.5)';
    targetCtx.lineWidth = 1;
    if (variation === 0) {
      targetCtx.beginPath();
      targetCtx.moveTo(px, py + 6);
      targetCtx.lineTo(px + 3, py + 2);
      targetCtx.moveTo(px, py + 10);
      targetCtx.lineTo(px + 4, py + 7);
      targetCtx.stroke();
    }

  } else if (t === 2) {
    // TREE - fuller canopy with shadow and depth
    // Shadow on ground
    targetCtx.fillStyle = 'rgba(20, 40, 20, 0.35)';
    targetCtx.beginPath();
    targetCtx.ellipse(px + TILE_SIZE / 2 + 4, py + TILE_SIZE - 4, 14, 6, 0, 0, Math.PI * 2);
    targetCtx.fill();
    
    // Trunk with bark texture
    const trunkG = targetCtx.createLinearGradient(px + 10, py, px + 22, py);
    trunkG.addColorStop(0, '#4a2d1a');
    trunkG.addColorStop(0.3, '#6b4423');
    trunkG.addColorStop(0.7, '#5a3820');
    trunkG.addColorStop(1, '#3d2515');
    targetCtx.fillStyle = trunkG;
    targetCtx.fillRect(px + 11, py + 10, 10, TILE_SIZE - 10);
    
    // Bark lines
    targetCtx.strokeStyle = 'rgba(30, 15, 5, 0.4)';
    targetCtx.lineWidth = 1;
    targetCtx.beginPath();
    targetCtx.moveTo(px + 14, py + 14);
    targetCtx.lineTo(px + 14, py + 26);
    targetCtx.moveTo(px + 18, py + 16);
    targetCtx.lineTo(px + 17, py + 28);
    targetCtx.stroke();

    // Canopy - multiple layers for depth
    // Back leaves (darker)
    const leafSway = Math.sin(animationTime * 0.5 + tilePhase) * 1;
    targetCtx.fillStyle = '#1d5028';
    targetCtx.beginPath();
    targetCtx.arc(px + TILE_SIZE / 2 - 3 + leafSway, py + 12, 11, 0, Math.PI * 2);
    targetCtx.arc(px + TILE_SIZE / 2 + 5 + leafSway, py + 10, 10, 0, Math.PI * 2);
    targetCtx.fill();
    
    // Main canopy
    const g = targetCtx.createRadialGradient(
      px + TILE_SIZE / 2, py + 4, 2,
      px + TILE_SIZE / 2, py + 8, 16
    );
    g.addColorStop(0, '#6ac47a');
    g.addColorStop(0.4, '#4aa85a');
    g.addColorStop(1, '#2d7840');
    targetCtx.fillStyle = g;
    targetCtx.beginPath();
    targetCtx.arc(px + TILE_SIZE / 2 + leafSway * 0.5, py + 8, 13, 0, Math.PI * 2);
    targetCtx.fill();
    
    // Highlight leaves
    targetCtx.fillStyle = 'rgba(120, 200, 130, 0.5)';
    targetCtx.beginPath();
    targetCtx.arc(px + TILE_SIZE / 2 - 4, py + 4, 5, 0, Math.PI * 2);
    targetCtx.fill();

  } else if (t === 3) {
    // WATER - animated waves with depth
    const g = targetCtx.createLinearGradient(px, py, px, py + TILE_SIZE);
    g.addColorStop(0, '#2890d0');
    g.addColorStop(0.5, '#1a70b0');
    g.addColorStop(1, '#104880');
    targetCtx.fillStyle = g;
    targetCtx.fillRect(px, py, TILE_SIZE, TILE_SIZE);

    // Animated wave layers
    const waveTime = animationTime * 1.5 + tilePhase;
    
    // Deep ripples
    targetCtx.strokeStyle = 'rgba(30, 90, 140, 0.4)';
    targetCtx.lineWidth = 2;
    targetCtx.beginPath();
    const deepWave = Math.sin(waveTime * 0.7) * 3;
    targetCtx.moveTo(px, py + 20 + deepWave);
    targetCtx.quadraticCurveTo(px + TILE_SIZE / 2, py + 16 + deepWave, px + TILE_SIZE, py + 20 + deepWave);
    targetCtx.stroke();
    
    // Surface shimmer
    targetCtx.strokeStyle = 'rgba(255, 255, 255, 0.5)';
    targetCtx.lineWidth = 1.5;
    targetCtx.beginPath();
    const shimmer1 = Math.sin(waveTime) * 4;
    targetCtx.moveTo(px + 2, py + 8 + shimmer1);
    targetCtx.quadraticCurveTo(px + TILE_SIZE / 2, py + 4 + shimmer1, px + TILE_SIZE - 2, py + 8 + shimmer1);
    targetCtx.stroke();
    
    // Secondary shimmer
    targetCtx.strokeStyle = 'rgba(200, 240, 255, 0.4)';
    targetCtx.lineWidth = 1;
    const shimmer2 = Math.sin(waveTime + 2) * 3;
    targetCtx.beginPath();
    targetCtx.moveTo(px + 4, py + TILE_SIZE - 8 + shimmer2);
    targetCtx.quadraticCurveTo(px + TILE_SIZE / 2, py + TILE_SIZE - 12 + shimmer2, px + TILE_SIZE - 4, py + TILE_SIZE - 8 + shimmer2);
    targetCtx.stroke();
    
    // Sparkle
    if (Math.sin(waveTime * 2 + variation) > 0.7) {
      targetCtx.fillStyle = 'rgba(255, 255, 255, 0.8)';
      targetCtx.beginPath();
      targetCtx.arc(px + 10 + variation * 4, py + 10 + variation2 * 3, 1.5, 0, Math.PI * 2);
      targetCtx.fill();
    }

  } else if (t === 4) {
    // FENCE - rustic wooden fence with grain and shadows
    // Shadow
    targetCtx.fillStyle = 'rgba(30, 20, 10, 0.3)';
    targetCtx.fillRect(px + 2, py + 22, TILE_SIZE - 2, 4);
    
    // Rail with wood grain
    const railG = targetCtx.createLinearGradient(px, py + 11, px, py + 21);
    railG.addColorStop(0, '#d4b07a');
    railG.addColorStop(0.5, '#c49a5a');
    railG.addColorStop(1, '#a4804a');
    targetCtx.fillStyle = railG;
    targetCtx.fillRect(px, py + 11, TILE_SIZE, 10);
    
    // Wood grain on rail
    targetCtx.strokeStyle = 'rgba(100, 70, 40, 0.3)';
    targetCtx.lineWidth = 0.5;
    targetCtx.beginPath();
    targetCtx.moveTo(px, py + 14);
    targetCtx.lineTo(px + TILE_SIZE, py + 14);
    targetCtx.moveTo(px, py + 18);
    targetCtx.lineTo(px + TILE_SIZE, py + 18);
    targetCtx.stroke();
    
    // Posts with depth
    const postG = targetCtx.createLinearGradient(px + 3, py, px + 8, py);
    postG.addColorStop(0, '#7a5530');
    postG.addColorStop(0.5, '#9a7040');
    postG.addColorStop(1, '#6a4525');
    targetCtx.fillStyle = postG;
    targetCtx.fillRect(px + 3, py + 5, 6, TILE_SIZE - 6);
    targetCtx.fillRect(px + TILE_SIZE - 9, py + 5, 6, TILE_SIZE - 6);
    
    // Post tops (rounded)
    targetCtx.fillStyle = '#8a6535';
    targetCtx.beginPath();
    targetCtx.arc(px + 6, py + 6, 3, 0, Math.PI * 2);
    targetCtx.arc(px + TILE_SIZE - 6, py + 6, 3, 0, Math.PI * 2);
    targetCtx.fill();

  
'@

# Load the file
$filePath = "f:\Wired Masters Dropbox\Sam Wills\Chat GPT\Yarnvale\Yarnvale Top Down\index.html"
$content = [System.IO.File]::ReadAllText($filePath)

# Find the section to replace
$startMarker = "    function drawTile(t, x, y, targetCtx = ctx) {"
$endMarker = "  } else if (t === 5) {"

$startIdx = $content.IndexOf($startMarker)
$endIdx = $content.IndexOf($endMarker, $startIdx)

if ($startIdx -gt 0 -and $endIdx -gt $startIdx) {
    Write-Host "Found section from $startIdx to $endIdx"
    
    # Build new content
    $before = $content.Substring(0, $startIdx)
    $after = $content.Substring($endIdx)
    
    $newContent = $before + $newTiles + $after
    
    # Write back
    [System.IO.File]::WriteAllText($filePath, $newContent)
    
    Write-Host "Successfully updated drawTile function (tiles 0-4)"
} else {
    Write-Host "Could not find section markers! Start: $startIdx, End: $endIdx"
}
