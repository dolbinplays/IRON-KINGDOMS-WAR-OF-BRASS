# Iron Kingdoms Asset Slice Manifest

Build: v0.26.06.12.1357

Generated first-pass slices from D:/JoshGameFiles/IronKingdoms/UpdatedArt.

- Pass C integrated candidates: assets/ui/kingdoms/p1..p8 crest, badge, ownership marker, turn chip.
- Pass B integrated candidates: assets/fx/auras, assets/fx/status, assets/fx/tiles.
- Pass A source/reference only: assets/factions/p1..p8 source sheets plus representative reference crops.
- Source sheets copied to assets/source_sheets for cleanup and future re-slicing.
- Integrated in current package: Cloud Lobby badges, player info crests, HUD turn chip, ownership markers, tile overlays, commander aura rings, and small unit status icons.
- Battle-console integration: true-transparent unit, vehicle, commander, and mirrored defender crops were sliced into assets/battle_console for map units and Langrisser-style battle scenes.
- New commander compatibility: Thorn Regent, Cinder Khan, Dusk Corsair, and Frost Matriarch placeholder/first-pass art was written into assets/commanders/p0..p7 plus portraits so every slot can select every commander without broken images.
- Building trio integration: fantasy_steampunk_building_trio_sprite_sheet_true_transparent.png was sliced into town/city/fortress structure art for all player folders.
- Battle presentation integration: squad unit crops now render as enlarged battlefield formations, while Commander and Steam Tank crops render as feature combatants; source-facing overrides are used for generated crops that were drawn in the opposite direction.
- Terrain integration: fantasy_steampunk_tileset_for_strategy_game_true_transparent.png was sliced into the active `assets/tiles` terrain set, including plains variants and 16-mask sets for forest, hills, mountains, water, and roads.
- Extra terrain reference: unused dirt/rough ground slices were saved under `assets/tiles_extra/fantasy_steampunk_dirt`.
- Intro integration: the final title-theme intro video was copied to `assets/intro/iron_kingdoms_intro.mp4` for the New War setup screen; intro volume preferences are stored locally, and a cranked-up non-destructive CRT pixelation, scanline, phosphor color-mask, and vignette overlay is used while the source video remains visible.

Notes: most provided sheets were RGB with light backgrounds, so white/near-white pixels were converted to alpha for practical UI use. Some crops are approximate and should receive hand-cleanup before full sprite replacement.
