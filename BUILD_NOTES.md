# Iron Kingdoms: War of Brass — Console Tactics UI Overhaul

Build: v0.26.06.11.2038

This patch implements the aggressive retro-console UI mandate from the uploaded prompt.

## Major UI changes

- Reframed the default screen around a map-first, console-tactics layout.
- Hid persistent left/right dashboard panels by default and turned them into slide-out drawers.
- Added a compact top HUD with essential actions only.
- Added a console-style bottom message window that shows recent war-log lines without dominating the screen.
- Added a contextual unit command popup near the selected unit.
- Added map-focused command flow for Move / Attack / Wait / Capture / Recruit / Cancel.
- Moved Cloud Multiplayer into a modal-style Cloud Lobby overlay.
- Moved utility controls into slide-out/overlay style menus instead of always-open panels.
- Added a full War Log modal for reviewing event history.
- Added fast SNES/Genesis-style menu motion and pixel/brass UI framing.

## Preserved

- Local play, AI play, Supabase cloud multiplayer, kingdom claims, JSON save/load, imported MP3 soundtrack, move-then-attack, recruitment, fog of war, observer system, battle view, Genesis asset pass, and current victory rules.

## Notes

This is a UI/UX transformation patch. The old panels still exist for compatibility but are hidden behind Inspector / Options / Cloud controls so the map remains dominant.
