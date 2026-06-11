# Roadmap — Iron Kingdoms: War of Brass

Current build: v0.26.06.11.2018

## Completed in this build

- 1990s Genesis/Mega Drive inspired asset pass.
- Rebuilt tactical map units, commanders, portraits, terrain, structures, effects, and battle backgrounds.
- Preserved cloud multiplayer and kingdom claim functionality.

## Recommended next art patches

1. Hand-tuned portrait pass for named commanders.
2. 4-frame attack / hurt / defeat sprite sheet pass for battle scenes.
3. UI frame skin pass to match the Genesis-era art more closely.
4. Scenario map authoring tools and handcrafted maps.

---

# Iron Kingdoms Roadmap

## Current Build

`v0.26.06.11.0758` — Cloud Lobby + Kingdom Claim

## Completed Recent Milestones

- Premium PNG asset branch.
- Imported MP3 soundtrack.
- Music overlap fix.
- Supabase polling cloud sync.
- Move-then-attack tactical flow.
- Visible Cloud Setup before game start.
- Kingdom Claim system for cloud multiplayer.
- Per-player fog-of-war view while waiting.

## Recommended Next Patches

1. **Cloud Lobby Pre-Game Ready Screen**
   - Join before match starts.
   - Claim slot before host launches.
   - Ready / Not Ready.
   - Host starts when ready.

2. **Cloud Turn Notifications**
   - Browser notification when your claimed kingdom is up.
   - Sound cue for “your turn.”

3. **Stronger Cloud Conflict Recovery**
   - Clear stale claims.
   - Host admin controls.
   - Reclaim abandoned kingdom.

4. **True Secure Fog of War**
   - Supabase Edge Function or backend server.
   - Send each player only filtered visible map state.

5. **Scenario / Map Editor**
   - Curated multiplayer maps.
   - Better balance than pure random generation.
