# Build Notes — v0.26.06.10.1912

## Premium presentation branch

This build moves beyond the strict single-file prototype into a GitHub Pages folder build so that higher-quality PNG assets and audio loops can be used without bloating `index.html`.

## Major changes

- Added optional zoomed-in battle view.
- Added Battle View setting: On / Fast / Off.
- Added generated PNG sprites for every unit and commander, including larger battle versions.
- Added faction-colored PNG variants for 2–8 players.
- Added PNG terrain tiles and structure sprites.
- Added battle backgrounds by terrain/structure type.
- Added hit burst, explosion, muzzle flash, spell burst, smoke, fog, aura, ready/exhausted, and range indicator PNGs.
- Added original generated retro WAV music loops in `/assets/audio/`.
- Preserved the existing WebAudio SFX and fallback music logic.
- Preserved JSON save/load Discord multiplayer.

## Known limitations

- PNG assets are a generated first premium pass, not final hand-painted production art.
- Zoomed battle view uses one attack pose per unit and CSS animation rather than full multi-frame character sheets.
- Audio loops are generated retro-style WAVs; final itch.io polish could replace them with hand-composed OGG loops.

## JavaScript check

A syntax check was run against the script extracted from `index.html`.
