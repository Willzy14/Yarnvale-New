# 🎨 Yarnvale Asset Wishlist

A comprehensive list of assets that would enrich the game world. The game is **delivery-ready** without these, but they would significantly enhance the visual experience.

---

## 📋 Quick Reference

| Priority | Category | Count | Impact |
|----------|----------|-------|--------|
| 🔴 High | Animal Sprites | 3 | Transforms game feel |
| 🔴 High | NPC Portraits | 8 | Adds personality |
| 🔴 High | Building Sprites | 5 | Visual landmark |
| 🟡 Medium | Item Icons | ~20 | Polish inventory |
| 🟡 Medium | Environment Props | 6 | World decoration |
| 🟡 Medium | Furniture | 6 | Cottage interior |
| 🟢 Lower | Weather Effects | 3 | Atmosphere |
| 🟢 Lower | UI Elements | 4 | Menu polish |
| 🟢 Lower | Additional Audio | 6 | Ambience |

---

## 🔴 HIGH PRIORITY - Significant Impact

### 1. Animal Sprites (32x32 or 64x64 PNG)
Currently using colored shapes. Custom sprites would transform the feel.

| Filename | Description | Notes |
|----------|-------------|-------|
| `Sheep.png` | White fluffy sheep | With wool |
| `Sheep_Shorn.png` | Just-sheared sheep | Without wool |
| `Peacock.png` | Colorful peacock | With tail display |

> ✅ `Goat.png` already exists!

### 2. NPC Portraits (64x64 or 96x96 PNG)
For dialogue boxes - adds personality to conversations.

| Filename | Character | Description |
|----------|-----------|-------------|
| `Granny_Willow.png` | Granny Willow | Elderly woman, kind face, grey hair |
| `Felix_Trader.png` | Felix the Trader | Merchant with hat, friendly smile |
| `Tom_Shepherd.png` | Young Tom | Young boy, messy hair, cheerful |
| `Mira_Gardener.png` | Mira the Gardener | Woman with flowers in hair |
| `Iris_Dyer.png` | Iris the Dyer | Woman with colorful/stained clothes |
| `Master_Theo.png` | Master Theo | Distinguished tailor, measuring tape |
| `Old_Mosswort.png` | Old Mosswort | Forest hermit, beard, mossy look |
| `Willa_Merchant.png` | Wandering Willa | Traveling merchant, backpack |

### 3. Building/Structure Sprites (32x32 tiles)

| Filename | Description | Location |
|----------|-------------|----------|
| `Cottage.png` | Player's home exterior | Overworld |
| `Market_Stall.png` | Village market stall | Village center |
| `Well.png` | Stone village well | Village |
| `Dye_Shop.png` | Iris's colorful shop | South village |
| `Tailor_Shop.png` | Theo's elegant shop | South village |

---

## 🟡 MEDIUM PRIORITY - Nice to Have

### 4. Item Icons (16x16 or 32x32 PNG)
For inventory and shop displays.

#### Crafted Items
| Filename | Item |
|----------|------|
| `Scarf.png` | Basic scarf |
| `Hat.png` | Woolly hat |
| `Socks.png` | Cozy socks |
| `Mittens.png` | Warm mittens |
| `Blanket.png` | Large blanket |
| `Fancy_Hat.png` | Feathered hat |
| `Luxury_Scarf.png` | Premium scarf |
| `Luxury_Mittens.png` | Premium mittens |
| `Luxury_Socks.png` | Premium socks |

#### Materials
| Filename | Item |
|----------|------|
| `Wool.png` | Raw wool bundle |
| `Yarn.png` | Ball of yarn |
| `Luxury_Yarn.png` | Premium yarn |
| `Goat_Fur.png` | Goat fur |
| `Feather.png` | Peacock feather |

#### Forageables
| Filename | Item |
|----------|------|
| `Mushroom.png` | Forest mushroom |
| `Berries.png` | Wild berries |
| `Wild_Flower.png` | Colorful flower |
| `Resin.png` | Tree resin drop |
| `Shell.png` | Beach seashell |

#### Dyes & Special
| Filename | Item |
|----------|------|
| `Teal_Dye.png` | Blue-green dye pot |
| `Amber_Dye.png` | Golden dye pot |
| `Crystal_Shard.png` | Glowing crystal |
| `Gold_Coin.png` | Currency |

### 5. Environment Props (32x32 tiles)

| Filename | Description | Usage |
|----------|-------------|-------|
| `Bridge.png` | Wooden bridge | Over water/gaps |
| `Signpost.png` | Direction sign | Path intersections |
| `Bench.png` | Wooden bench | Resting spots |
| `Barrel.png` | Storage barrel | Village decoration |
| `Crate.png` | Wooden crate | Village/farm props |
| `Lantern.png` | Path lantern | Evening lighting |

### 6. Furniture (32x32 tiles)
For cottage interior.

| Filename | Description |
|----------|-------------|
| `Bed.png` | Cozy cottage bed |
| `Fireplace.png` | Warm hearth with fire |
| `Spinning_Wheel.png` | Crafting station |
| `Bookshelf.png` | Books and decoration |
| `Table.png` | Wooden table |
| `Chair.png` | Simple chair |
| `Chest.png` | Storage chest |

---

## 🟢 LOWER PRIORITY - Future Polish

### 7. Weather/Effects (Small sprites)

| Filename | Description |
|----------|-------------|
| `Rain_Particle.png` | Raindrop (8x8) |
| `Snow_Particle.png` | Snowflake (8x8) |
| `Sparkle.png` | Magic sparkle effect |

### 8. UI Elements

| Filename | Description |
|----------|-------------|
| `Button_Frame.png` | Styled button background |
| `Panel_Background.png` | Menu panel texture |
| `Heart_Full.png` | Friendship heart (filled) |
| `Heart_Empty.png` | Friendship heart (empty) |

### 9. Additional Audio

| Filename | Description | Usage |
|----------|-------------|-------|
| `Ocean_Waves.wav` | Gentle wave sounds | Beach ambience |
| `Forest_Birds.wav` | Bird chirping | Forest ambience |
| `Cave_Drip.wav` | Water dripping | Cave ambience |
| `Door_Open.wav` | Door creaking | Entering buildings |
| `Collect_Item.wav` | Pickup sound | Foraging |
| `Quest_Complete.wav` | Victory fanfare | Completing quests |

---

## 📁 Suggested Folder Structure

```
Yarnvale Assets/
├── Art/
│   ├── Animals/
│   │   ├── Goat.png ✅ (exists)
│   │   ├── Sheep.png
│   │   ├── Sheep_Shorn.png
│   │   └── Peacock.png
│   │
│   ├── NPCs/
│   │   └── Portraits/
│   │       ├── Granny_Willow.png
│   │       ├── Felix_Trader.png
│   │       ├── Tom_Shepherd.png
│   │       ├── Mira_Gardener.png
│   │       ├── Iris_Dyer.png
│   │       ├── Master_Theo.png
│   │       ├── Old_Mosswort.png
│   │       └── Willa_Merchant.png
│   │
│   ├── Buildings/
│   │   ├── Cottage.png
│   │   ├── Market_Stall.png
│   │   ├── Well.png
│   │   ├── Dye_Shop.png
│   │   └── Tailor_Shop.png
│   │
│   ├── Items/
│   │   ├── Crafted/
│   │   │   ├── Scarf.png
│   │   │   ├── Hat.png
│   │   │   └── ...
│   │   ├── Materials/
│   │   │   ├── Wool.png
│   │   │   ├── Yarn.png
│   │   │   └── ...
│   │   └── Forageables/
│   │       ├── Mushroom.png
│   │       ├── Berries.png
│   │       └── ...
│   │
│   ├── Props/
│   │   ├── Bridge.png
│   │   ├── Signpost.png
│   │   └── ...
│   │
│   ├── Furniture/
│   │   ├── Bed.png
│   │   ├── Fireplace.png
│   │   └── ...
│   │
│   ├── UI/
│   │   ├── Button_Frame.png
│   │   ├── Heart_Full.png
│   │   └── ...
│   │
│   ├── Grass/ ✅ (exists)
│   ├── Sprite/ ✅ (exists)
│   ├── Dirt Path/ ✅ (exists)
│   └── App Icon/ ✅ (exists)
│
└── Audio/
    ├── Ambience/
    │   ├── Ocean_Waves.wav
    │   ├── Forest_Birds.wav
    │   └── Cave_Drip.wav
    │
    └── (existing audio files) ✅
```

---

## 🎯 Implementation Notes

### Sprite Sizes
- **Tiles**: 32x32 pixels (matches game grid)
- **Characters/Animals**: 32x32 or 64x64 (64 for detail)
- **Portraits**: 64x64 or 96x96 (for dialogue boxes)
- **Icons**: 16x16 or 32x32 (for inventory)
- **Particles**: 8x8 (for effects)

### Style Guide
- **Pixel art aesthetic** - Keep it cozy and charming
- **Soft, warm color palette** - Greens, browns, pastels
- **Consistent line weight** - 1-2 pixel outlines
- **Match existing Yarnya sprite style**

### Audio Specs
- **Format**: WAV or MP3
- **Sample Rate**: 44.1kHz
- **Bit Depth**: 16-bit
- **Keep file sizes reasonable** for web

---

## ✅ Already Have

These assets already exist in the project:
- Yarnya player sprite (all 4 directions, 32 & 64 sizes)
- Goat sprite
- Grass tile variations
- Dirt path tiles
- Tile sets (grass/water, trees/plants)
- Background music (multiple tracks)
- Sound effects (shear, knit, sell, step, fire, sheep sounds)
- App icon

---

*Last updated: December 8, 2025*
