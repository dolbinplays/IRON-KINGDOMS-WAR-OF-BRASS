# Iron Kingdoms: War of Brass

Build: v0.26.06.12.1802

Iron Kingdoms: War of Brass is a browser-playable fantasy steampunk turn-based strategy game with local play, AI players, manual Discord JSON save handoff, and Supabase cloud sync.

This GitHub Pages package preserves the current cloud multiplayer/kingdom claim branch, manual JSON save/load backup, imported MP3 soundtrack, move-then-attack flow, fog of war, battle view, AI turns, and Genesis/Mega Drive inspired pixel-art presentation.

See `BUILD_NOTES.md`, `UI_LAYOUT_GUIDE.md`, `CLOUD_SYNC_SETUP.md`, and `ASSET_GUIDE.md` for details.

## Quick Start

1. Open `index.html` locally or host this folder on GitHub Pages.
2. Click **New Game**.
3. Set player slots to Human / AI / Closed.
4. Start the game.
5. Use **Save Game** and **Load Game** for manual JSON handoff, or use **Cloud** for Supabase sync.

## Cloud Multiplayer

Cloud play uses Supabase as a lightweight full-state JSON handoff. This patch does not require database schema changes.

1. Open **Cloud**.
2. If needed, open **Cloud Setup** and paste the Supabase Project URL plus anon/publishable key.
3. Host clicks **Host Cloud Game**.
4. Share the generated game code and secret in Discord.
5. Friends click **Join Cloud Game**, enter the code and secret, then claim their kingdom slot.

Once a browser claims a kingdom:

- Only that claimed kingdom can act on its own turn.
- Waiting players cannot move, recruit, or end turn.
- Waiting players can view their own fog-of-war perspective.
- Manual JSON save/load remains available if cloud sync is unavailable.

## GitHub Pages Hosting

Upload the package contents so `index.html` is at the root of the repository. Keep the `assets/` folder beside it.

Required structure:

```text
index.html
assets/
README.md
BUILD_NOTES.md
CLOUD_SYNC_SETUP.md
supabase_cloud_games_setup.sql
```

After uploading, hard refresh the page with Ctrl+F5.

## v0.26.06.12.1802 Direct Unit Command Flow Notes

This build keeps the map-first retro console tactics layout, generated asset integrations, slower AI turn pacing, enlarged battle formations, intro CRT treatment, and cleaned-up road generation. Unit selection now defaults to direct map actions: select a unit to see movement and attack ranges, click blue tiles to move, click red enemies to attack, and only use the command popup when capture or recruitment creates a real choice. Recruited/map/battle units now follow the selected commander faction art, and commander battle sprites can use matching `_attacking.png` frames when present.
