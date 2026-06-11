# Iron Kingdoms: War of Brass - Console Tactics UI Polish 2

Build: v0.26.06.11.2205

This patch continues the map-first retro-console UI pass while preserving the existing local, manual JSON, and Supabase cloud multiplayer flows.

## Major UI changes

- Tightened the compact top HUD and increased the battlefield/message-window emphasis.
- Added a second-pass console UI layer for stronger brass/pixel framing without changing game rules.
- Improved command popup placement so it prefers the open side of the selected tile and clamps inside the visible map area.
- Kept the command popup hidden during Move/Attack targeting and restored it after movement with post-move actions.
- Improved Cloud Lobby copy with clearer Host/Join/Claim language.
- Added Cloud Diagnostics showing config, connection, game code, claim, current kingdom, last sync, and status.
- Added defensive null-state handling around current player, cloud status, render, end turn, loaded saves, and AI turns.
- Added visible Close buttons for Cloud and Options, plus Escape-to-close for console overlays.

## Preserved

- New Game, End Turn, local play, AI play, Supabase cloud multiplayer, kingdom claims, JSON save/load, imported MP3 soundtrack, move-then-attack, recruitment, fog of war, observer system, battle view, Genesis asset pass, and current victory rules.

## Notes

Cloud sync remains a friendly-prototype full-state JSON handoff. If Supabase config is missing or disconnected, local play and manual JSON save/load remain available.
