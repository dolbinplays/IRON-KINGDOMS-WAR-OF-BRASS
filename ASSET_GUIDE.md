# Asset Guide — v0.26.06.10.1912

## Unit assets

Each faction has a folder under `/assets/units/p0` through `/assets/units/p7`. Every unit has:

- `infantry.png` and `infantry_battle.png`
- `pikemen.png` and `pikemen_battle.png`
- `cavalry.png` and `cavalry_battle.png`
- `riflemen.png` and `riflemen_battle.png`
- `artillery.png` and `artillery_battle.png`
- `steam_tank.png` and `steam_tank_battle.png`
- `airship.png` and `airship_battle.png`
- `gyrocopter.png` and `gyrocopter_battle.png`
- `mage.png` and `mage_battle.png`
- `assassin.png` and `assassin_battle.png`

Faction identity is shown through flags, armor trim, hull stripes, capes, scarves, and banners rather than recoloring the entire unit.

## Commander assets

Each faction has commander assets in `/assets/commanders/p0` through `/assets/commanders/p7`:

- `steam_marshal.png`, `_battle.png`, `_portrait.png`
- `archmage.png`, `_battle.png`, `_portrait.png`
- `sky_admiral.png`, `_battle.png`, `_portrait.png`
- `iron_priest.png`, `_battle.png`, `_portrait.png`

## Terrain

Tiles live in `/assets/tiles/` and are 64x64 PNGs. Battle backgrounds live in `/assets/battle_backgrounds/` and are 320x180 PNGs.

## Audio

Original generated retro WAV loops live in `/assets/audio/`:

- title_theme.wav
- player_turn_theme.wav
- battle_theme.wav
- tension_theme.wav
- observer_council_theme.wav
- victory_fanfare.wav
- defeat_sting.wav

## Future asset upgrade path

The next art step would be replacing these generated PNGs with hand-directed sprite sheets containing 3–5 battle frames per unit while keeping the same filenames or adding metadata-driven animation sheets.
