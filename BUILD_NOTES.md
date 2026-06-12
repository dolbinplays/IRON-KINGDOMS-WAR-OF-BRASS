# Iron Kingdoms: War of Brass - AI Pacing and Battle Visibility

Build: v0.26.06.12.0105

This patch improves AI turn readability and battle-scene unit visibility while preserving the existing local, manual JSON, and Supabase cloud multiplayer flows.

## Major UI changes

- AI-controlled kingdoms now pause between decisions and show a visible thinking pulse on the unit being evaluated.
- AI movement now uses the same tile-by-tile movement animation as human movement, including every square passed through before attacking or ending the unit.
- Battle scenes now force attacker/defender duel sprites onto the top combat layer, add a subtle frame behind them, and fall back to map sprites if a battle PNG fails to load.
- Added explicit foreground fighter panels in battle scenes using the known-visible map sprite path, so units are no longer dependent on the older battle image layer.
- Battle scenes remain visible slightly longer so the units and damage moment are easier to read.
- Sliced Pass C heraldry into large/small crests, lobby badges, ownership markers, and turn chips for all eight kingdoms.
- Added kingdom crests to the Cloud Lobby claim list and the player info panel.
- Added a turn-chip image to the compact top HUD current-player badge.
- Added non-blocking ownership marker images on claimed structures while keeping the original color dot fallback.
- Sliced Pass B aura rings, status icons, and tile overlay frames.
- Integrated subtle commander aura rings, exhausted/aura/pending status icons, and PNG-backed selected/move/attack/capture tile overlays with pointer events disabled.
- Sliced Pass A faction banners/emblems and representative unit/vehicle reference crops, but did not replace the existing gameplay unit sprites.
- Tightened the compact top HUD and increased the battlefield/message-window emphasis.
- Added a second-pass console UI layer for stronger brass/pixel framing without changing game rules.
- Improved command popup placement so it prefers the open side of the selected tile and clamps inside the visible map area.
- Kept the command popup hidden during Move/Attack targeting and restored it after movement with post-move actions.
- Improved Cloud Lobby copy with clearer Host/Join/Claim language.
- Added Cloud Diagnostics showing config, connection, game code, claim, current kingdom, last sync, and status.
- Added defensive null-state handling around current player, cloud status, render, end turn, loaded saves, and AI turns.
- Added visible Close buttons for Cloud and Options, plus Escape-to-close for console overlays.
- Fixed battle-view unit visibility by restoring battle unit display above the battle background/shade.
- Added tile-by-tile movement animation for player movement so units visibly walk through each square.

## Preserved

- New Game, End Turn, local play, AI play, Supabase cloud multiplayer, kingdom claims, JSON save/load, imported MP3 soundtrack, move-then-attack, recruitment, fog of war, observer system, battle view, Genesis asset pass, and current victory rules.

## Notes

Cloud sync remains a friendly-prototype full-state JSON handoff. If Supabase config is missing or disconnected, local play and manual JSON save/load remain available.

Most new generated sheets used a rendered checkerboard or light background rather than true alpha, so first-pass slices use background removal and may need hand cleanup before full sprite replacement.
