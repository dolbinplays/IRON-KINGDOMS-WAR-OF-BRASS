# Build Notes — v0.26.06.11.2018

## Summary

Genesis Retro Asset Pass for IRON KINGDOMS: WAR OF BRASS. This build uses the latest cloud/kingdom-claim working branch as its source, preserves Supabase cloud sync and manual JSON save/load, and replaces the visual asset set with a more coherent 1990s Sega Genesis / Mega Drive inspired fantasy-steampunk pixel-art pass.

## Changed

- Rebuilt all unit map PNGs for all 8 player colors.
- Rebuilt all `_f1` / `_f2` ready animation frames.
- Rebuilt all battle-view unit PNGs.
- Rebuilt all commander sprites, battle sprites, and 192x192 portraits.
- Rebuilt terrain tiles with a stronger limited-palette 16-bit look.
- Rebuilt road/water/forest/hill/mountain 16-mask autotile variants.
- Rebuilt town, city, and fortress structure sprites for all 8 player colors.
- Rebuilt combat/effect UI PNGs in a pixel style.
- Rebuilt battle backgrounds in low-res pixel art scaled to 320x180.
- Added optional sprite sheets under `assets/sheets/`.
- Added CSS overrides for pixelated rendering.
- Updated the visible in-game build label to `v0.26.06.11.2018`.

## Preserved

- Supabase cloud sync and kingdom claiming.
- Manual JSON save/load.
- Imported MP3 soundtrack and music overlap fixes.
- AI players and commander selection.
- Move-then-attack tactical flow.
- Squad-size battle representation and zoomed battle view.
- Coherent tiles / autotile logic.
- Fog of war, economy, recruitment, observer system, terrain defense, and victory logic.

## Testing

JavaScript syntax check passed. Visual asset paths were preserved to match the existing code.
