# UI Layout Guide - v0.26.06.12.1802

## Design goal

Keep Iron Kingdoms feeling like a late-era console tactics game: the map is the primary screen, with only the next useful command visible.

## Main screen

- Top HUD: compact title, version, turn/player state, save/load/end turn, cloud, options, inspector.
- Map field: dominant central gameplay area with drawers and modals kept out of the way.
- Terrain: fantasy steampunk sheet slices provide higher-detail terrain art, with redundant terrain glyphs hidden so the map art stays readable.
- New War setup: intro video occupies the left side of the modal while map/player setup stays on the right, with skip, replay, and volume controls available inside the video panel; the video stays visible under a heavy 80s-cartoon CRT pixelation, scanline, color-mask, and vignette layer.
- Bottom message window: recent turn prompts, battle results, handoff reminders, and cloud status.
- Command popup: stays hidden for normal movement/attack selection and appears only when Capture or Recruit creates a real post-move choice.
- Asset language: kingdom crests identify claim slots and player rows; turn chips mark the active kingdom; tile overlays, aura rings, and status icons are decorative and never intercept map clicks.
- Unit art: recruited, map, and battle unit sprites follow the selected commander faction for each player, not just the numeric player slot.
- Sprite bounds: occupied map tiles allow sprite overflow so taller cleaned-up PNGs can extend beyond the square without clipping.

## Hidden/secondary systems

- Inspector drawer: unit, terrain, combat, and commander details.
- Auxiliary drawer: recruitment, audio/options, and observer controls.
- Cloud Lobby overlay: host/join, code/secret, claims, sync controls, and diagnostics.
- War Log modal: full event history.
- Close controls: Cloud and Options include visible Close buttons; Escape closes console overlays.

## Cloud Lobby states

- Missing config: show setup instructions; local/manual play still works.
- Not connected: Host or Join remains available.
- Connected without claim: claim a kingdom before acting.
- Claimed but waiting: cannot act; fog is shown from the claimed kingdom.
- Claimed current turn: can move, attack, recruit, and end turn.

## Command flow

1. Select a ready unit.
2. Blue movement tiles and red attack targets appear immediately.
3. Click a blue tile to move, or click a red enemy to attack.
4. After movement, click a red enemy to attack or click the moved unit again to wait.
5. If capture or recruitment is available, use the compact popup for Attack, Capture, Recruit, or Wait / Finish.

Movement now animates through each intermediate square before post-move choices appear.

AI movement uses the same intermediate-square animation, with a short thinking pulse before each AI unit acts.

Tile highlight PNGs are layered with `pointer-events: none`, so movement and attack target selection still goes through the underlying tile.

## Battle Presentation

- Infantry-scale units render as larger squad formations, using the squad counts in the unit definitions.
- Commanders and Steam Tanks remain single feature combatants for hero-vs-squad and vehicle-vs-squad scenes.
- Rifle, cannon, magic, melee, and casualty visuals are action-linked and anchored to the acting side and target side.
- Battle-side facing uses per-unit overrides so left and right formations face each other even when source crops are inconsistent.
- Commander feature sprites can swap to `_attacking.png` frames during their strike window and then return to their standard stance.
- The battle background stays behind all combatants, projectiles, and damage numbers.

## Philosophy

The player should see the map, the current turn context, and one clear action menu. Cloud, options, recruitment, help, and the full log are available, but they should not compete with the battlefield during normal play.
