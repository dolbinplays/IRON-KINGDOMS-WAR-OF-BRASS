# UI Layout Guide - v0.26.06.11.2205

## Design goal

Keep Iron Kingdoms feeling like a late-era console tactics game: the map is the primary screen, with only the next useful command visible.

## Main screen

- Top HUD: compact title, version, turn/player state, save/load/end turn, cloud, options, inspector.
- Map field: dominant central gameplay area with drawers and modals kept out of the way.
- Bottom message window: recent turn prompts, battle results, handoff reminders, and cloud status.
- Command popup: appears beside selected units, hides during targeting, and returns after movement for Attack/Capture/Recruit/Wait.

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
2. Command popup appears beside the unit.
3. Choose Move or Attack; popup hides while target tiles are selected.
4. After moving, popup returns with post-move actions.
5. Finish with Attack, Capture, Recruit, or Wait / Finish.

## Philosophy

The player should see the map, the current turn context, and one clear action menu. Cloud, options, recruitment, help, and the full log are available, but they should not compete with the battlefield during normal play.
