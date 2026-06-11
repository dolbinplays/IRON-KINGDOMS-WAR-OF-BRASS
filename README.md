# Iron Kingdoms: War of Brass

Build `v0.26.06.11.0713` — Cloud Lobby + Kingdom Claim

A browser-playable fantasy steampunk turn-based strategy game with local play, AI players, Discord JSON save handoff, and Supabase cloud sync.

## Quick Start

1. Open `index.html` locally or host the package on GitHub Pages.
2. Click **New Game**.
3. Set player slots to Human / AI / Closed.
4. Pre-name Human slots for your friends if using cloud multiplayer.
5. Start the game.
6. Click **Cloud Setup** and paste your Supabase Project URL + anon/publishable key.
7. Click **Host Cloud Game**.
8. Share the game code and secret in Discord.
9. Friends click **Join Cloud Game**, enter the code/secret, then claim their kingdom slot.

## Cloud Kingdom Claim Flow

The host creates the match and names the Human slots. Example:

- Red Kingdom — Joshua
- Blue Kingdom — Derek
- Green Kingdom — Alex
- Brass Kingdom — AI Captain

When friends join the cloud game, they should click **Claim Slot** next to their assigned kingdom.

Once a player claims a kingdom:

- Only that browser can act for that kingdom on its turn.
- While waiting, they see their own kingdom’s fog-of-war view.
- The UI shows whose turn it is.
- Waiting music plays from the existing soundtrack selection.

## Manual Save Backup

Manual **Save Game** and **Load Game** remain available. If Supabase is unavailable, you can still pass JSON files through Discord.

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

## Supabase Setup

See `CLOUD_SYNC_SETUP.md` for the SQL script and setup steps.
