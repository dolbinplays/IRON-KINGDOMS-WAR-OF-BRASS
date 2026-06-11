# Iron Kingdoms: War of Brass — Genesis Retro Asset Pass

Build: v0.26.06.11.2018

This is a GitHub Pages-ready package. Upload the contents of this folder so `index.html` is at the repository root.

This build preserves the current cloud multiplayer/kingdom claim branch and replaces the art assets with a 16-bit Sega Genesis / Mega Drive inspired fantasy-steampunk pixel-art pass.

See `ASSET_GUIDE.md` and `BUILD_NOTES.md` for details.

## Hosting

1. Upload this folder's contents to your GitHub repository.
2. Make sure `index.html` is at repo root.
3. Enable GitHub Pages from the main branch/root.
4. Hard refresh the page after uploading: Ctrl+F5.

## Cloud multiplayer

Use the same Supabase setup from the previous build. This patch does not require database schema changes.

---

# Iron Kingdoms: War of Brass

Build `v0.26.06.11.0758` — Cloud Lobby + Kingdom Claim

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
