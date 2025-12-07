# Yarnvale Future Plans

---
## 🤖 AGENT HANDOFF NOTES (Dec 7, 2025 - Evening Session)

### What Was Completed Today:
1. **Intro/Welcome System** - New players see a welcome screen with "Begin Your Journey" button, followed by Elder Mara NPC dialogue explaining the game basics. Stored in localStorage so it only shows once.
2. **Overworld Map Cleanup** - Removed messy half-paddock, centered cottage at top, moved pond to bottom-left, cleaner path layout.
3. **Mobile Task Board Improvements** - Smaller panel on mobile, visible red X close button, bigger touch targets, max 3 tasks shown with "+X more" indicator.
4. **Peacock Animal** - New animal that gives decorative feathers! Wanders the overworld, has colorful animated tail, gives 2 feathers when interacted with, feathers regrow in 15 seconds.
5. **Feather Crafting Recipes**:
   - Fancy Hat (hat + 2 feathers) - sells for 35 gold
   - Feather Fan (4 feathers) - sells for 40 gold
6. **New Inventory Items**: feather, fancyHat, featherFan

### Key Code Locations in index.html:
- Intro System: ~lines 1720-1865 (`introState`, `drawWelcomeScreen()`, `drawIntroDialogue()`)
- Task Board: ~lines 1958-2140 (`drawTaskBoardUI()` - mobile improvements)
- Peacock: ~lines 2704-2724 (`const peacock`), ~lines 6250-6360 (`drawPeacock()`)
- Peacock Interaction: ~lines 5020-5040 (feather collection)
- Feather Recipes: ~lines 2585-2600 (`fancyHat`, `featherFan`)
- Collision Detection: ~lines 4822-4828 (includes peacock)

### Save System:
- Now **Version 4** schema
- Includes: peacock state (position, hasFeathers, featherTimer)

### Next Priority Tasks:
1. **Llamas** - Another new animal for fine wool (luxury yarn boost)
2. **Pen building system** - Place pen plots, buildable fences
3. **More feather/fine wool recipes** - Capes, ponchos, plushies
4. **Fast-travel signposts** - After area discovery

### Known Issues / Polish Needed:
- None reported currently
- Mobile tested and working

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
- [x] Peacocks: drop decor feathers periodically; sell or use in fashion/decor.
- [ ] (Optional) Rabbits: fast-regrowing soft fur, lower value quick loop.
- [x] Wandering AI within radius; penned animals stay in bounds; simple obstacle avoidance.
- [ ] Treat/feeding buff (no starvation): next yield quality/quantity boost.
- [ ] Move animals between pens via interact menu; pens have capacity tiers.

### Crafting & Economy
- [x] New materials: fine wool, feathers, soft fur, forest dyes (amber/teal), resin/varnish, cloth bolts.
- [x] New recipes: Fancy Hat (hat + feathers), Feather Fan (feathers only)
- [ ] More recipes: capes (yarn + feathers), ponchos (fine wool), plushies (soft fur + dye), banners (cloth + dye), pillows, festival lanterns (resin + dye).
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
- [x] Mobile UI: larger touch targets for shops/crafting; persistent close button on task board.
- [ ] Autosave on map transitions (keep manual save/load).

### Performance / Tech
- [ ] Sprite/tilesheet audit; trim unused frames; lazy-load audio.
- [ ] Object pooling for animals/NPCs; clean up offscreen entities.
- [ ] Service worker cache bump when assets change.

## Success Criteria
- First 10 minutes: guided tasks cover shearing, crafting, selling, gifting, saving.
- 20–40 minutes: unlock forest/village utility, build first pen, get first new animal, craft 2–3 new items.
- 40–60 minutes: complete festival/order-board arc, unlock fast travel, own multiple animals in pens, craft a luxury item.
