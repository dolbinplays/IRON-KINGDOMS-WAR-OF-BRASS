# UI Layout Guide — v0.26.06.11.2038

## Design goal

Stop presenting Iron Kingdoms as a browser dashboard. Present it like a premium late-era console tactics game.

## Main screen

- **Top HUD:** title, version, turn/player state, save/load/end turn, cloud, options, inspector.
- **Map field:** dominant central gameplay area.
- **Bottom message window:** 1–4 recent messages, turn prompts, battle results, cloud reminders.
- **Command popup:** appears near selected units and provides console-style actions.

## Hidden/secondary systems

- **Inspector drawer:** unit, terrain, combat, commander info.
- **Auxiliary drawer:** recruitment, audio, observer controls.
- **Cloud Lobby overlay:** host/join, code/secret, claims, sync controls.
- **War Log modal:** full scrollable history.

## Command flow

1. Select a unit.
2. Movement range appears.
3. Command popup appears.
4. Move, Attack, Wait, Capture, Recruit, or Cancel.
5. Bottom message confirms important outcomes.

## Philosophy

The player should see only what they need for the next tactical decision. Utility systems are available, but they no longer compete with the map during normal play.
