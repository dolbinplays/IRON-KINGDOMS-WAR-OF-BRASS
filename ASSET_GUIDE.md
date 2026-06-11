# Asset Guide — v0.26.06.10.1954

## Tiles

Tiles are stored in `/assets/tiles/`.

Autotiled terrain uses 16 adjacency-mask variants:

- `roads_0.png` through `roads_15.png`
- `water_0.png` through `water_15.png`
- `forest_0.png` through `forest_15.png`
- `hills_0.png` through `hills_15.png`
- `mountains_0.png` through `mountains_15.png`

Mask bits: North = 1, East = 2, South = 4, West = 8.

## Unit animation frames

Each map unit now has generated frame variants:

- `<unit>_f1.png`
- `<unit>_f2.png`

Ready units alternate these frames with CSS. Exhausted units only show the calm base sprite and the exhausted checkmark/dimming state.

## Music

Audio files are stored in `/assets/audio/` as original retro WAV loops. This build does not copy or derive music from the uploaded reference; it uses the reference only as a mood target for heroic adventure, danger, and fantasy war energy.
