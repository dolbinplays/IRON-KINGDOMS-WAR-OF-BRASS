# Iron Kingdoms: War of Brass — Genesis Retro Asset Pass

Build: v0.26.06.11.2018

This package implements the uploaded retro asset-pass request: a 16-bit Sega Genesis / Mega Drive inspired visual pass for map sprites, terrain, structures, commander portraits, effects, and battle backgrounds. The source request emphasized original art, a lost-1990s fantasy tactics look, steampunk/fantasy identity, coherent autotiles, frame-based ready animations, and version consistency.

## Implementation format

The safest format for the current GitHub Pages build is a mixed external-asset package:

- 64x64 PNG map sprites and tiles, rendered from 32x32 pixel-art source scale.
- 160x160 battle sprites, rendered from 80x80 pixel-art source scale.
- 192x192 commander portraits, rendered from 96x96 pixel-art source scale.
- Existing filenames and folders are preserved so gameplay code remains stable.
- Optional inspection sheets were added under `assets/sheets/`.

## Unit concepts

- Infantry: shield-and-sword foot soldier with plume, shield, and step frames.
- Pikemen: long diagonal pike silhouette and braced military stance.
- Cavalry: mounted lancer with visible horse body and lance.
- Riflemen: compact firearm silhouette with optional smoke frame.
- Artillery: brass cannon with wheels and crew-color panel.
- Steam Tank: boiler vehicle with treads, cannon, stack, and steam puff.
- Airship: zeppelin silhouette with gondola, tail fin, and propeller frames.
- Gyrocopter: compact rotor craft with alternating rotor frames.
- Mage: robed arcane caster with staff glow and magic pulse.
- Assassin: hooded rogue with low stance, cloak, and dagger motion.

## Commander concepts

- Steam Marshal: caped brass officer with saber/cap identity.
- Archmage: dramatic rune-engine mage with bright arcane hair/hat silhouette.
- Sky Admiral: airfleet commander with broad hat, shoulder pads, and wing motifs.
- Iron Priest: gear-halo priest with hammer/reliquary silhouette.

## Tileset concepts

- Roads use 16 adjacency masks for endpoints, straights, corners, T-junctions, and intersections.
- Water uses edge-aware shore strips where neighboring water is absent.
- Forest, hill, and mountain tiles respond to neighboring terrain with denser edge continuity.
- Terrain remains crisp, high-contrast, and readable under the grid.

## Animation logic

Ready map units use the existing two-frame `_f1` / `_f2` cycling system. This pass replaced the old floaty look with step/stance/rotor/tread/steam/magic frame changes. Exhausted units stop the frame cycling and are dimmed/desaturated by CSS.

## Faction color logic

The eight player folders remain `p0` through `p7`. Each faction gets the same base sprite construction with only cloth, capes, banners, shields, hull panels, or trim recolored. Metal, brass, leather, flesh, and shadows remain stable so unit identity does not disappear.

## Battle-view compatibility

The 160x160 battle sprites were regenerated in the same pixel style so the squad-size battle view continues to work. The battle backgrounds were also replaced with low-resolution pixel backgrounds scaled up for retro presentation.
