# IRON KINGDOMS: WAR OF BRASS — v0.26.06.10.2326

This GitHub Pages build includes Supabase cloud JSON handoff and Warsong-style move-then-attack.

## Play options

### Local / Discord backup

Use **Save Game** and **Load Game** to pass JSON files in Discord.

### Cloud multiplayer

Use **Cloud Setup** in the game, paste your Supabase Project URL and anon public key, then **Host Cloud Game** or **Join Cloud Game**. See `CLOUD_SYNC_SETUP.md` for the full setup.

## Hosting on GitHub Pages

Upload this folder so `index.html` is at the repository root, then enable GitHub Pages from the main branch root.

## New tactical flow

A unit can move first, then attack from the new position. After moving, choose an attack target or click **Wait / Finish Unit**.

## Files

- `index.html` — playable game
- `CLOUD_SYNC_SETUP.md` — Supabase setup instructions
- `supabase_cloud_games_setup.sql` — SQL setup script
- `BUILD_NOTES.md` — patch notes
- `assets/` — art and imported music assets

---

# Iron Kingdoms: War of Brass — v0.26.06.10.2226

Complete Imported Soundtrack patch for GitHub Pages.

## Run
Open `index.html` locally or host this folder on GitHub Pages. No build process or server backend is required.

## New in v0.26.06.10.2226
- Imported the user-generated ElevenLabs MP3 music set into `assets/audio/music/`.
- Added primary and alternate takes for every uploaded cue that had two versions.
- Added a **Soundtrack Set** selector: Main takes, Alternate takes, or Auto mix by turn.
- Kept the fixed single-track music controller from the overlap-fix build so tracks do not stack over each other.
- Preserved AI players, commander selection, squad battle presentation, coherent tiles, zoomed battle view, and Discord JSON handoff.

## Track Mapping
See `MUSIC_TRACK_MAP.md` for exactly where each uploaded MP3 was placed.

## Missing Generated Slots
The uploaded set did not include a new Title Theme or Final Kingdom / Endgame Theme. This build keeps the prior generated tracks in those slots:
- `assets/audio/music/title_theme.mp3`
- `assets/audio/music/final_kingdom_theme.mp3`

If you generate new versions later, replace those filenames directly.

## Discord Play
For human turns, press End Turn, Save Game, and post the JSON file to Discord. AI turns resolve automatically after loading or after a human ends turn.

## Audio
Press Enable Audio once. Use Music/SFX toggles, volume sliders, and Soundtrack Set selector. Settings persist in localStorage.

## Complete Imported Soundtrack

Build `v0.26.06.10.2226` completes the imported soundtrack pass. The uploaded `War of Brass` and `The Last War of Brass` MP3s now fill the Title Theme and Final Kingdom / Endgame Theme slots, including alternate takes.

