# 🧶 Yarnvale Development Plan

A cosy top-down crafting game about shearing animals, spinning yarn, and building a little knitting empire.

---

## Core Gameplay Loop

```
Shear Animals → Craft Items → Sell at Market → Buy Upgrades → Expand Farm
      ↑                                                           |
      └───────────────────────────────────────────────────────────┘
```

---

## Phase 1: Core Crafting Loop (High Priority)
*Make the existing systems feel complete and interconnected*

| # | Feature | Description | Status |
|---|---------|-------------|--------|
| 1.0 | **Basic Crafting** | Shear sheep → spin wool into yarn → knit yarn into scarves | ✅ Done |
| 1.1 | **Goat Fur Crafting** | Use goat fur to craft warm mittens (2 fur → 1 mittens) or blend with wool for premium yarn (1 wool + 1 fur → 2 luxury yarn) | ✅ Done |
| 1.2 | **Expanded Recipes** | Add more craftables: Socks, Hats, Blankets (use more materials, sell for more gold) | ✅ Done |
| 1.3 | **Crafting Menu UI** | Replace single-action knitting with a menu to choose what to craft | ✅ Done |
| 1.4 | **Item Quality System** | Basic/Fine/Masterwork quality affects sell price (skill improves over time) | ⬜ Todo |

---

## Phase 2: Economy & Progression (High Priority)
*Give players reasons to earn and spend gold*

| # | Feature | Description | Status |
|---|---------|-------------|--------|
| 2.1 | **Shop System** | Add a shop NPC or notice board to buy upgrades | ✅ Done |
| 2.2 | **More Animals** | Buy additional sheep/goats (placed in paddock, more wool/fur income) | ✅ Done |
| 2.3 | **Tool Upgrades** | Golden shears (faster regrowth), Spinning wheel upgrade (bonus yarn) | ✅ Done |
| 2.4 | **Cottage Upgrades** | Expand cottage, add furniture that gives bonuses | ⬜ Todo |
| 2.5 | **Seasonal Orders** | Special requests: "Need 3 red scarves by Winter" for bonus gold | ⬜ Todo |

---

## Phase 3: NPCs & Social (Medium Priority)
*Bring the world to life with characters*

| # | Feature | Description | Status |
|---|---------|-------------|--------|
| 3.1 | **Villager NPCs** | 3-4 characters who walk around, have dialogue | ✅ Done |
| 3.2 | **Friendship System** | Gift items to NPCs, unlock their stories/rewards | ✅ Done |
| 3.3 | **NPC Requests** | "Can you make me a scarf?" → Reputation + gold | ✅ Done |
| 3.4 | **Traveling Merchant** | Appears occasionally with rare dyes or patterns | ✅ Done |

---

## Phase 4: World Expansion (Medium Priority)
*More places to explore*

| # | Feature | Description | Status |
|---|---------|-------------|--------|
| 4.1 | **Village Map** | New area with shops, NPCs, market square | ✅ Done |
| 4.2 | **Forest Area** | Trees, paths, connection to mountain | ✅ Done |
| 4.3 | **Beach Area** | Sandy shores, palm trees, shells, first crystal shard | ✅ Done |
| 4.4 | **Mountain Path** | Rocky terrain, cave entrance, second crystal shard | ✅ Done |
| 4.5 | **Crystal Cave** | Dark cave interior, final crystal shard | ✅ Done |
| 4.6 | **Map Transitions** | Walk to edge of map to move between areas | ✅ Done |
| 4.7 | **Quest System** | Story progression unlocks new areas | ✅ Done |

---

## Phase 5: Customization & Polish (Lower Priority)
*Make it feel personal*

| # | Feature | Description | Status |
|---|---------|-------------|--------|
| 5.1 | **Dye System** | Color your yarn/items (red, blue, green, etc.) | ⬜ Todo |
| 5.2 | **Player Customization** | Choose hair color, outfit | ⬜ Todo |
| 5.3 | **Cottage Decoration** | Place furniture, hang crafted items on walls | ⬜ Todo |
| 5.4 | **Seasons/Weather** | Visual changes, seasonal items | ⬜ Todo |
| 5.5 | **Achievements** | "Shear 100 sheep", "Earn 1000 gold", etc. | ⬜ Todo |

---

## Suggested Execution Order

1. ✅ 1.0 Basic Crafting ← Done (sheep → wool → yarn → scarf → sell)
2. ✅ 1.1 Goat Fur Crafting ← Done (goats + fur + luxury yarn)
3. ✅ 1.2 Expanded Recipes ← Done (Socks, Hats, Blankets, Mittens, Luxury items)
4. ✅ 1.3 Crafting Menu UI ← Done (choose what to craft)
5. ✅ 2.1 Shop System ← Done (buy upgrades with gold)
6. ✅ 2.2 More Animals ← Done (buy extra sheep/goats at shop)
7. ✅ 2.3 Tool Upgrades ← Done (Golden Shears, Spinning Wheel+)
8. ⬜ 3.1 Villager NPCs ← Next up (makes world feel alive)

---

## Current Status

**Last Updated:** December 7, 2025

**Currently Working On:** Phase 4 - World Expansion ✅ Complete!

---

## Quest System - The Crystal Loom

### Story
*"Yarnvale's ancient Crystal Loom has been dormant for generations. Legend says it can weave magical fabric, but its crystal shards were scattered across the land. Help the villagers, explore new areas, and gather the shards to restore the loom!"*

### Area Unlocks
| Area | How to Unlock |
|------|---------------|
| Beach | Help 2 villagers with requests |
| Mountain | Craft 5 items |
| Cave | Find the Beach Crystal Shard |

### Crystal Shard Locations
1. 💎 **Beach Shard** - On the sandy shore (tile 27)
2. 💎 **Mountain Shard** - Near the cave entrance
3. 💎 **Cave Shard** - Deep in the crystal cave

---

## Recent Session Notes (December 7, 2025)

### Movement Bug FIXED ✅
- Added missing `checkMapTransition()` function
- Updated `isSolidTile()` to include new solid tiles (market stalls, wells, bushes)

### World Expansion Added:
- **Village Map** (19x15) - Market square with stalls, well, flower patches
- **Forest Map** (21x15) - Trees, flowers, paths for foraging
- **Map Transitions** - Walk to edge of map to travel between areas:
  - Overworld → Village (walk right on path)
  - Village → Overworld (walk left)
  - Village → Forest (walk right or south path)
  - Forest → Village (walk left or north)

### New Tile Types:
- 9: Cobblestone path
- 10: Market stall (solid)
- 11: Well (solid)
- 12: Flower patch (walkable)
- 13: Bush with berries (solid)
- 14: Bridge (walkable)
- 15: Sign (walkable)

---

### What's Fully Implemented ✅
- **Save/Load System** - F5 to save, F9 to load, mobile buttons too
- **Redesigned Inventory Panel** - Two-column layout, compact
- **Mobile-friendly Dialogue** - D-pad fades, action button closes chat
- **Inventory button closes menus** on mobile (merchant, shop, gift, crafting)
- **Crafting System** with 9 recipes via crafting menu UI
- **Two animal types:** Sheep (wool) + Goats (fur)
- **Shop System** at position (15, 9) - blue canopy stall
- **Purchasable upgrades:** Extra Sheep (50g), Extra Goat (75g), Golden Shears (100g), Spinning Wheel+ (75g)
- **Multiple animals** - buy more sheep/goats, all render and can be sheared
- **Golden Shears** - wool/fur regrows 2x faster
- **Spinning Wheel upgrade** - get 2 yarn instead of 1 when spinning
- **3 Villager NPCs** - Granny Willow, Felix, Young Tom with dialogue
- **Friendship System** - gifts, levels, rewards
- **NPC Requests** - random requests with ! indicator
- **Traveling Merchant** - Wandering Willa with dyes/patterns

### Phase 4 Was In Progress:
- Started adding village/forest maps
- Map transition system was being implemented
- Something broke player movement - need to debug

### Recipes Available:
| Recipe | Inputs | Output | Sell Price |
|--------|--------|--------|------------|
| Yarn | 2 wool | 1 yarn | - |
| Luxury Yarn | 1 wool + 1 fur | 2 luxury yarn | - |
| Socks | 2 yarn | 1 socks | 8g |
| Mittens | 2 fur | 1 mittens | 15g |
| Scarf | 3 yarn | 1 scarf | 10g |
| Hat | 2 yarn + 1 wool | 1 hat | 12g |
| Luxury Mittens | 2 luxury yarn | 1 lux mittens | 20g |
| Luxury Scarf | 3 luxury yarn | 1 lux scarf | 25g |
| Blanket | 4 yarn + 2 wool | 1 blanket | 30g |

### Next Steps:
- Phase 3: Villager NPCs
- Phase 4: Village Map expansion

---

## Controls

### Basic Controls
- **WASD / Arrow Keys** - Move
- **E / Space** - Interact (doors, shear animals, craft, sell, shop, collect crystals)
- **I** - Open/close inventory
- **Esc** - Close menus

### Save/Load
- **F5** - Quick Save
- **F9** - Quick Load
- **Mobile**: Use Options menu (⚙ button)

### Debug Controls (for testing)
| Platform | How to Unlock All Areas | Show Progress |
|----------|------------------------|---------------|
| **Desktop** | `Ctrl+Shift+D` | `Ctrl+Shift+S` |
| **Mobile** | Options → Tap "Options" title 5x → Debug button appears | N/A |

### Other Debug Keys (Desktop)
- **F2** - Toggle debug info overlay
- **F3** - Toggle grid overlay  
- **F4** - Toggle collision overlay

---

## File Structure

```
Yarnvale Top Down/
├── index.html          # Main game file
├── README.md           # This file
└── Yarnvale Assets/
    ├── Art/
    │   ├── Animals/
    │   ├── Dirt Path/
    │   ├── Grass/
    │   └── Sprite/
    └── Audio/
        ├── Background music/
        └── [sound effects]
```
