# Yarnvale Future Plans (Delivery: Dec 25, 2025)

---
## 📋 CONTINUATION NOTES (Last Updated: V56)

### Current Version: V56 (UI Polish)
### Save Version: 8
### Service Worker Cache: yarnvale-v20

### Completed This Session:
- ✅ V54: Pen Decor Buffs (+1 yield when Wind Chimes purchased)
- ✅ V55: Touch/Controller Prompt Polish (device-aware prompts throughout)
- ✅ V55: Lazy-load music tracks (only load when scene entered)
- ✅ V56: UI Consistency Audit (standardized panel styles with UI constants)
- ✅ V56: Cached sky gradient (performance - avoid recreating every frame)
- ✅ Cache bump: yarnvale-v20

### UI Constants System (V56):
- Created UI object with centralized style constants
- panelBg, dimBg, headerBg for backgrounds
- borderColor, borderWidth, borderRadius for borders
- textPrimary, textSecondary, textGold, textSuccess, textError for colors
- Shop-specific themes: dyeShop, tailorShop, farmShop

### Panels Standardized:
- Dialogue UI, Gift Menu, Task Board Panel
- Inventory Panel, Crafting Menu
- All three shop UIs (Dye, Tailor, Farm)

### Touch Prompts Updated:
- Intro screen shows touch-specific instructions on mobile
- Fishing hint: "Tap Interact to Fish" on mobile
- Loom attune hint: "Tap Interact to Attune" on mobile
- Crafting hint: "Tap Interact to Craft" on mobile
- All shop UIs: "Tap item to Buy/Sell | Back to close" on mobile
- Fish biting message: "Tap quickly!" instead of "Press E"
- Task descriptions: Generic "interact" instead of "press E"

### Performance Improvements:
- Music tracks now lazy-load (preload='none', only created when scene entered)
- Sky gradient cached and reused (avoid createLinearGradient every frame)
- Maps are small enough that viewport culling isn't needed
- Object pooling deferred (animal count is low, not needed)

### Key Code Locations:
- **UI Constants**: Lines ~560-590 (UI object)
- **Touch Prompt Helper**: Lines ~632 (getPrompt function)
- **Cached Sky Gradient**: Lines ~8845 (skyGradient)
- **Intro Instructions**: Lines ~2640 (isMobile check)
- **Fishing Prompts**: Lines ~7000, ~7145, ~13045
- **Loom/Crafting Prompts**: Lines ~13058, ~13080
- **Shop Prompts**: Lines ~4386, ~4500, ~6427
- **Music Lazy-load**: Lines ~1055-1070 (initMusicTracksForScene)

---

This roadmap focuses on richer story, events, and replayable loops to ship a "cozy, content-rich" build by Dec 25. Asset improvements (sprites/UI/icons) are tracked separately in `ASSET_WISHLIST.md` and can arrive in parallel.

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

---
## 🔥 NEXT SESSION PRIORITY: Farm Shop & Pen Building

### Feature: Barnaby's Farm Shop
A new vendor NPC on the overworld (near the paddock area) who sells:
- **Fencing** (10g each) - place to build pen walls
- **Gate** (25g) - place as pen entrance, player can walk through
- **Animals** - purchasable once you have a pen:
  - Extra Sheep (50g)
  - Llama (100g) - yields fine wool
  - Rabbit (40g) - fast soft fur loop
  - Extra Goat (75g)

### Implementation Plan
1. **Add Barnaby NPC** to overworld (e.g., x:16, y:5) with shop dialogue
2. **New shop UI** (`farmShopOpen`) similar to dye/tailor shops
3. **Inventory items**: `fencing`, `gate` (buildable), gold cost
4. **Build Mode**:
   - Press B or tap "Build" button to enter build mode
   - Select fencing/gate from build menu
   - Place on grass tiles; fence = solid tile (4), gate = walkable
   - Deduct item from inventory on placement
5. **Pen detection** (optional/later): check if fences form enclosed loop
6. **Animal purchase**: spawns new animal at pen location if pen exists, else near existing animals

### Code Locations to Modify
- `villagers[]` array: add Barnaby NPC
- New `farmShopOpen` state + `farmShopItems[]` array
- `handleCanvasInteraction()`: farm shop touch support
- `drawFarmShopUI()`: render shop menu
- `inventory{}`: add fencing, gate counts
- New `buildMode` state + `drawBuildModeUI()`
- `handleAction()`: place fence/gate when in build mode
- `isSolidTile()`: placed fences become solid

### Estimated Time: 45-60 minutes

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
- [x] Fast-travel signposts after discovery (Farm ↔ Village ↔ Forest ↔ Beach ↔ Mountain ↔ Wetlands). ✅ V26
- [x] Wetlands connector map with reeds + dye plant (indigo/violet); connects Forest ↔ Mountain. ✅ V30
- [x] Snowy ridge landmark near Mountain top. ✅ V43
- [x] Props pass: benches, lanterns, crates, festival bunting in Village. ✅ V40

### Animals
- [x] Llamas: slow shear, fine wool (luxury yarn boost), penned. ✅ V48/V49
- [x] Peacocks: decor feathers; regrow.
- [x] Rabbits: fast soft fur loop. ✅ V48
- [x] Treat buff (no starvation): next yield bonus. ✅ V50
- [x] Pen upgrades/capacity tiers. ✅ V49

### Crafting & Economy
- [x] Dyes (amber/teal); shell crafts; dyed items; luxury socks.
- [x] New recipes: ~20 recipes including capes, ponchos, plushies, banners, lanterns, shell jewelry, friendship-locked recipes. ✅ V28
- [x] Luxury "royal" set (fine wool + rare dye). ✅ V51
- [x] Daily/weekly orders board with timers and rewards. ✅ V27

### Quests & Story
- [x] Festival of Threads 3-step arc with evening payoff + voucher/discount. ✅ V35
- [x] Hermit's loom whisper arc; cave riddle; shard hinting. ✅ V44
- [x] Beach Shell Song mini-arc (shell collection → lullaby reward). ✅ V47
- [x] Village Heart mini-quests (Granny/Felix/Theo/Iris) granting perks/recipes. ✅ V36
- [x] Friendship Perks system: thresholds unlock shop discounts and recipes. ✅ V27

### Building & Progression
- [x] Pen construction/upgrades (capacity, regrow speed). ✅ V49
- [x] Pen decor slot buffs (+1 yield from Wind Chimes). ✅ V54
- [x] Cottage upgrade hooks (3 tiers; faster crafting). ✅ V52
- [x] Barnaby's Farm Shop: fencing, gates, animal purchases. ✅ V25

### Systems / UX
- [x] Task board UI.
- [x] Inventory filters (Materials/Crafted/Dyes/Foraged tabs). ✅ V39
- [x] Large-text toggle; colorblind-safe accent palette. ✅ V53
- [x] Autosave on map transitions (with toggle). ✅ V38
- [x] Fast travel menu with signpost discovery. ✅ V26
- [x] Controller/touch prompt clarity (device-aware prompts). ✅ V55

### Mini-Games
- [x] Fishing Mini-Game (Beach): timing bar for shells/fish/treasure, difficulty tuned. ✅ V29/V31
- [x] Loom Attune: timed taps to align threads (reward: +1 crafted output for next 3 crafts). ✅ V33
- [x] Knitting Sprint: short timing loop to "perfect" an item for +1 value. ✅ V34

### Performance / Tech
- [x] Sprite/audio audit; lazy-load music (preload='none', load on scene enter). ✅ V55
- [x] Object pooling/offscreen cleanup — DEFERRED (not needed, small maps/few entities).
- [x] Cache bump when assets change (sw.js version). ✅ V55 (yarnvale-v20)

---
## 🎉 ALL FEATURES COMPLETE! 🎉

## Success Criteria (Dec 25 build)
- First 15 minutes: guided welcome, shard legend hook, first craft/sell/gift, task board used.
- 30–45 minutes: festival arc active; first pen upgrade; first fast-travel unlock; friendship perk earned.
- 45–60 minutes: wetlands visited; loom attune mini-game; luxury/lamp/banner crafted; daily order completed.
- Replay: daily/weekly orders, mini-games, and fast travel keep sessions snackable.
