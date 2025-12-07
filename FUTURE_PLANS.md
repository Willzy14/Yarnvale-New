# Yarnvale Future Plans

---
## 🤖 AGENT HANDOFF NOTES (Dec 7, 2025)

### What Was Just Completed:
1. **Task Board UI** - Press T to toggle. Shows active objectives, tracks progress, minimizable.
2. **Animal Wandering System** - Sheep/goat now wander within radius with smooth pixel movement.
3. **Forest Foraging System** - Mushrooms, berries, wildflowers, resin in forest; shells on beach. Respawn over time.
4. **South Village Vendors**:
   - **Iris the Dyer** (x:3, y:9 in village) - Trade foraged items for dyes
   - **Master Theo the Tailor** (x:15, y:9 in village) - Sell crafted items for gold
5. **New Inventory Items**: mushroom, berries, wildFlower, resin, shell, amberDye, tealDye, brownDye, pearlThread, mushroomBasket, berryJam
6. **New Crafting Recipes**: amberDye, tealDye, mushroomBasket, berryJam

### Key Code Locations in index.html:
- Task Board: ~lines 1700-1900 (`gameTasks`, `taskProgress`, `drawTaskBoardUI()`)
- Animal Wandering: ~lines 2300-2420 (`updateAnimalWandering()`)
- Forageables: ~lines 2150-2250 (`forageableSpots`, `collectForageable()`)
- Village Vendors: ~lines 2620-2800 (`dyeShopTrades`, `tailorBuyPrices`, shop functions)
- Villagers array: ~line 2870 (includes new vendors with `isVendor: true`)

### Next Priority Tasks (from checklist below):
1. **Pen building system** - Place pen plots on farm, buildable fences
2. **New animals** - Llamas (fine wool), Peacocks (feathers)
3. **More crafting recipes** - Capes, ponchos, plushies using new materials
4. **Fast-travel signposts** - After area discovery

### Save System:
- Version 3 schema, saves to localStorage
- Includes: inventory, animal positions, taskProgress, storyProgress, friendship

---

## Goals
- Deliver ~1 hour of guided play (tutorial → early goals → mid progression).
- Enrich forest and south village with purpose and services.
- Add mobile animals, pens, and new materials/recipes that feed the economy.
- Keep systems lightweight (no starvation fail states) and mobile-friendly.

## Milestones (build order)
1. Guided onboarding + task board UI.
2. Animal systems: pens, moving animals, wandering/pathing, light treat boosts.
3. World density: forest resources + south village vendors and board.
4. New animals/outputs: llamas (fine wool), peacocks (decor feathers), optional rabbits (soft fur).
5. Crafting/economy expansion: new materials, recipes, seasonal orders.
6. Quests/narrative beats: festival/loom arc, NPC perks.
7. Polish/pacing: fast travel, mobile UI refinements, save/autosave, perf.

## Checklist
### World / Maps
- [x] Add forest points of interest (forage: mushrooms/resin; rare dye plants; shrine hook).
- [x] Enrich south village: dye shop, tailor stall (buys premium cloth), animal broker, notice board.
- [ ] Place pen plots on farm; buildable fences (wood/rope) gating capacity.
- [ ] Add fast-travel signposts after discovery (farm ↔ village ↔ forest).

### Animals
- [ ] Llamas: slower shear, yield fine wool (boost luxury yarn).
- [ ] Peacocks: drop decor feathers periodically; sell or use in fashion/decor.
- [ ] (Optional) Rabbits: fast-regrowing soft fur, lower value quick loop.
- [x] Wandering AI within radius; penned animals stay in bounds; simple obstacle avoidance.
- [ ] Treat/feeding buff (no starvation): next yield quality/quantity boost.
- [ ] Move animals between pens via interact menu; pens have capacity tiers.

### Crafting & Economy
- [x] New materials: fine wool, feathers, soft fur, forest dyes (amber/teal), resin/varnish, cloth bolts.
- [ ] New recipes: capes (yarn + feathers), ponchos (fine wool), plushies (soft fur + dye), banners (cloth + dye), pillows, festival lanterns (resin + dye).
- [ ] Luxury set: Royal scarf/hat/cloak using fine wool + rare dye for high sell value.
- [ ] Seasonal/weekly orders board: timed deliveries for gold + reputation.

### Quests & NPCs
- [ ] Festival of Threads mini-arc: collect feathers/dyes/fine wool to decorate square; unlock fast travel/discounts.
- [ ] Forest herbalist NPC (teaches dyes/resin); village tailor (fine cloth); animal broker (unlocks llamas/peacocks post-quest).
- [ ] Friendship perks: discounts or unique recipes (e.g., teal dye from herbalist).

### Building & Progression
- [ ] Pen construction/upgrades: capacity + decor slot per pen.
- [ ] Cottage upgrades: loom corner (crafting yield buff), storage chest (inventory expand), display rack (showcase item grants passive bonus).
- [ ] Terrain polish: fences, signposts, benches for lived-in feel.

### Systems / UX
- [x] Task board UI for quests/orders with rewards listed.
- [ ] Inventory filters (materials / crafted / quest items).
- [ ] Mobile UI: larger touch targets for shops/crafting; persistent close button.
- [ ] Autosave on map transitions (keep manual save/load).

### Performance / Tech
- [ ] Sprite/tilesheet audit; trim unused frames; lazy-load audio.
- [ ] Object pooling for animals/NPCs; clean up offscreen entities.
- [ ] Service worker cache bump when assets change.

## Success Criteria
- First 10 minutes: guided tasks cover shearing, crafting, selling, gifting, saving.
- 20–40 minutes: unlock forest/village utility, build first pen, get first new animal, craft 2–3 new items.
- 40–60 minutes: complete festival/order-board arc, unlock fast travel, own multiple animals in pens, craft a luxury item.
