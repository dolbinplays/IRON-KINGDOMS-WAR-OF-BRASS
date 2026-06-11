# Iron Kingdoms: War of Brass — Build Notes v0.26.06.10.1954

## Coherent Tiles + Frame Animation + Music Patch

This patch responds to the premium presentation request for a more coherent game map, less floaty ready-unit animation, and a stronger original score.

### What changed

- Added adjacency-based autotiling for roads, water, forests, hills, and mountains.
- Roads now select from 16 connection masks and support straights, corners, T-junctions, intersections, and endpoints.
- Water now uses edge-aware shoreline variants.
- Forests, hills, and mountains use neighbor-aware variants so clusters feel more continuous.
- Structures received stronger ground shadows so towns, cities, and fortresses feel seated into the map.
- Ready units now use 2-frame PNG animation assets instead of simple up/down bobbing.
- Exhausted units stop the lively frame animation and remain dimmed/checked.
- Generated `_f1` and `_f2` map animation frames for each unit/commander/faction variant.
- Re-rendered the original soundtrack with more layered retro synthesis: stronger lead melodies, bass ostinatos, chord stabs, and martial percussion.
- Added optional commander-danger and final-kingdom music files for future triggers.

### Version

Visible in-game build label, folder name, zip filename, and docs all use `v0.26.06.10.1954`.

### Syntax check

JavaScript syntax check passed after patching.
