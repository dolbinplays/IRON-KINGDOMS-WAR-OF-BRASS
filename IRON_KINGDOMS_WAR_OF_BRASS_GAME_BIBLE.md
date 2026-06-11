# IRON KINGDOMS: WAR OF BRASS — Game Bible

## 1. High Concept

**Iron Kingdoms: War of Brass** is a weekend-playable, multiplayer, turn-based strategy game for 2–8 human players. It is designed to be shared through Discord using JSON save files rather than a live server.

The design target is a readable mix of **Advance Wars**, **Warsong/Langrisser**, **Warlords**, and fantasy tabletop warfare. The first version prioritizes stability, turn handoff, strategic clarity, and enough unit variety to create meaningful battles without requiring a separate battle screen or complicated network setup.

## 2. Core Design Pillars

1. **Playable this weekend** — The game must work by opening one HTML file or hosting it as `index.html` on GitHub Pages.
2. **Discord-friendly multiplayer** — Turns are passed by saving and posting a JSON file.
3. **Readable battlefield decisions** — The player should quickly understand who can move, who owns what, where enemies are, and what options are available.
4. **Commander-centered warfare** — Each kingdom has one powerful commander with an aura that shapes nearby battles.
5. **Meaningful eliminated-player involvement** — Defeated players become observers with Influence Tokens and light-impact powers.
6. **No build friction** — No server, no build tools, no external libraries, and no dependency setup.

## 3. Technical Format

The game is a single-file HTML5 application.

- File: `index.html`
- Embedded CSS
- Embedded JavaScript
- No external dependencies
- No server required
- Runs locally by opening the file directly
- Can be hosted on GitHub Pages

## 4. Intended Multiplayer Flow

1. Start a new game with 2–8 players.
2. The current player takes their turn.
3. The current player clicks **Save Game**.
4. The generated `.json` save file is posted in Discord.
5. The next player opens the game and clicks **Load Game**.
6. The next player loads the JSON file and takes their turn.
7. Play repeats until victory.

This is not live online multiplayer. It is asynchronous/hotseat-by-save-file multiplayer designed to be reliable and simple.

## 5. Player Count

Supported player count: **2–8 human players**.

Default player names are generated as Kingdom 1, Kingdom 2, etc. Each player receives a distinct color and one commander class.

## 6. Map System

The game uses a square grid map.

### Map Sizes

- **Small:** 12 × 10
- **Medium:** 16 × 12
- **Large:** 22 × 16

### Map Generation

Maps are generated randomly from a seed. The seed is stored in the save file so the war can be restored consistently.

### Terrain Types

| Terrain | Movement Cost | Defense Bonus | Notes |
|---|---:|---:|---|
| Plains | 1 | 0 | Basic open ground. |
| Forest | 2 | 2 | Slower movement, strong defense. |
| Hills | 2 | 1 | Moderate movement penalty and defense. |
| Mountains | 3 | 3 | High defense, slow movement. |
| Water | 99 | 0 | Essentially impassable in the current version. |
| Roads | 1 | 0 | Fast movement routes. |

Terrain affects movement and combat survivability.

## 7. Structures and Economy

Players earn gold at the start of their turn from controlled structures.

| Structure | Income | Notes |
|---|---:|---|
| Town | 150 gold | Basic income site. |
| City | 300 gold | Main recruitment site. |
| Fortress | 200 gold | Defensive strategic site. |

### Capturing

Infantry-type units can capture structures by moving onto them.

Capture-capable units:

- Infantry
- Pikemen
- Riflemen
- Mage
- Assassin

Cities are especially important because they both generate income and recruit units.

## 8. Turn Structure

At the start of each living player’s turn:

- Controlled structures generate gold.
- Units are refreshed and can act again.
- Units inside their commander’s aura may receive healing.
- Current player information is updated.

A turn ends when the player clicks **End Turn**.

The current player is always displayed in the top interface and in the Player Information panel.

## 9. Commanders

Each player starts with one commander. Commanders are powerful battlefield units and remain on the map. Losing a commander is devastating.

### Commander Death and Defeat

A player is defeated only when both are true:

1. Their commander is dead.
2. They control no cities.

When defeated, the player becomes an Observer.

### Commander Aura

Units within 3 tiles of their commander receive class-based aura benefits.

Aura effects may include:

- Healing each turn
- Attack bonus
- Defense bonus

### Commander Classes

| Commander Class | Theme | Aura Identity |
|---|---|---|
| Steam Marshal | Brass officer, frontline tactician | Strong attack bonus, moderate healing. |
| Archmage | Arcane battlefield leader | Best healing, balanced bonuses. |
| Sky Admiral | Air-war commander | Aggressive attack support, lighter defense. |
| Iron Priest | Mechanized holy engineer | Best defense bonus, durable formation support. |

## 10. Unit Roster

| Unit | Cost | HP | Move | Attack | Defense | Range | Role |
|---|---:|---:|---:|---:|---:|---:|---|
| Infantry | 300 | 100 | 3 | 26 | 8 | 1 | Cheap capturer and line holder. |
| Pikemen | 350 | 100 | 3 | 24 | 10 | 1 | Anti-cavalry infantry. |
| Cavalry | 650 | 100 | 5 | 34 | 12 | 1 | Fast attacker and artillery hunter. |
| Riflemen | 500 | 100 | 3 | 25 | 7 | 2 | Ranged anti-air support. |
| Artillery | 900 | 100 | 2 | 44 | 5 | 3 | Long-range tank breaker. |
| Steam Tank | 1100 | 120 | 3 | 40 | 20 | 1 | Heavy armor, strong against infantry. |
| Airship | 1200 | 100 | 5 | 36 | 11 | 2 | Expensive flying ranged threat. |
| Gyrocopter | 750 | 80 | 6 | 28 | 8 | 1 | Fast air skirmisher. |
| Mage | 800 | 75 | 3 | 38 | 5 | 2 | Fragile magical ranged attacker and capturer. |
| Assassin | 700 | 75 | 4 | 36 | 6 | 1 | Mage killer and commander threat. |
| Commander | 0 | 160 | 4 | 42 | 18 | 1 | Unique battlefield leader. |

## 11. Counter System

The battle system is designed around strong counters so no unit dominates all others.

| Attacker Type | Strong Against |
|---|---|
| Pikemen | Cavalry |
| Cavalry | Artillery, Riflemen |
| Artillery | Steam Tanks |
| Riflemen | Airships, Gyrocopters |
| Assassin | Mages, Commanders |
| Steam Tank | Infantry, Pikemen |
| Mage | Steam Tanks, Infantry |
| Airship | Artillery |
| Gyrocopter | Assassins |

This should create a basic triangle of infantry, cavalry, artillery, armor, air, and specialist counters.

## 12. Combat Rules

Combat happens directly on the map.

### Attack Flow

1. Attacker selects an enemy in range.
2. Attacker deals damage.
3. Defender counterattacks if attacker is within defender range and the defender survives.
4. Dead units are removed.
5. Surviving attackers gain experience.

### Damage Scaling

Damaged units are less effective because damage considers current health. Veteran units become stronger through experience.

### Experience

Units gain XP from combat. Veteran units receive improved effectiveness over time. This rewards preserving damaged units rather than treating units as disposable.

## 13. Recruitment

Cities can recruit units.

Recruitment rules:

- The player must control at least one city.
- The player must have enough gold.
- The unit is spawned near a controlled city if a nearby tile is open.
- More powerful units cost more gold.

The recruitment menu is designed to be simple and always visible in the right panel.

## 14. Fog of War

The game includes simple fog of war.

Players can see:

- Their own units
- Nearby terrain
- Nearby enemy units
- Known visible map area around their forces

Unseen tiles are darkened to reduce perfect information and encourage scouting.

## 15. Observer System

When a player is eliminated, they become an Observer rather than leaving the game completely.

Observers earn Influence Tokens and can spend them on limited-impact powers.

### Observer Powers

| Power | Cost | Effect |
|---|---:|---|
| Supply Drop | 3 | Heals all units of a selected/weak living player by a modest amount. |
| Sabotage | 4 | Damages a random non-commander unit of the leading player. |
| Weather Shift | 3 | Toggles stormy weather, affecting battlefield conditions. |
| Forced March | 3 | Refreshes one exhausted unit for the weakest living player. |
| Spy Network | 2 | Creates a map-awareness/log effect for save review. |
| Mercenary Contract | 5 | Spawns an Infantry unit for the weakest living player near a city. |

Observer powers are intended to keep eliminated players engaged without letting them completely decide the winner.

## 16. Visual Direction

The setting is steampunk medieval fantasy.

The current visual style uses lightweight icons and CSS-driven presentation rather than heavy image assets. The design goal is to avoid a static spreadsheet feel while keeping the game fast and portable.

### Unit Visual Identity

Each unit type has a distinct symbol and animation class:

- Infantry: melee icon and banner-like idle
- Pikemen: polearm identity
- Cavalry: horse/knight identity
- Riflemen: firearm identity
- Artillery: shell/blast identity
- Steam Tank: heavy block armor identity
- Airship: floating air identity
- Gyrocopter: propeller/rotor identity
- Mage: magical glow identity
- Assassin: shadow/moon identity
- Commander: crown/banner command identity

## 17. Animation Direction

Units that can still act visibly animate. Exhausted units become dimmer and calmer.

Animation examples:

- Gentle bobbing
- Banner movement
- Steam puffs
- Hovering
- Propeller spinning
- Magical glow

The animation system is intentionally lightweight and CSS-based.

## 18. User Interface

The game includes the required panels:

- Map
- Unit Information
- Commander Information
- Player Information
- Recruitment Menu
- Observer Menu
- Event Log

Desktop browsers are the priority. The UI is built for readability and fast decisions.

## 19. Victory

A player is defeated when:

- Their commander dies, and
- They control no cities.

The last surviving kingdom wins.

## 20. Current Build Scope

This first playable build includes:

- New Game
- Save Game
- Load Game
- End Turn
- 2–8 players
- Random maps
- Terrain movement and defense
- Structures and income
- Capturing
- Commanders
- Commander aura
- Unit recruitment
- Combat and counterattacks
- Unit experience
- Fog of war
- Observer powers
- Idle animations for ready units
- Exhausted unit visuals

## 21. Known Design Limits of the Weekend Build

These limits are acceptable for the first weekend version:

- No live online networking.
- No server-hosted save state.
- No AI opponent.
- No detailed diplomacy system.
- No separate battle screen.
- No large art asset pipeline.
- No sound or music requirement.
- No deep campaign/story layer.

The goal is to be playable with friends quickly, not to be a finished commercial game yet.

## 22. Recommended House Rules for Discord Play

To keep the first weekend session smooth:

1. Use a dedicated Discord channel for save files.
2. Require players to post a short message after uploading a save: “Turn done, Kingdom X is up.”
3. Do not load older save files unless the group agrees to rewind.
4. Let observers use powers only on their observer turn.
5. Use Small or Medium maps for the first session.
6. For 5–8 players, use Medium or Large maps.
7. If a save conflict happens, use the most recent save posted by the current player.

## 23. GitHub Pages Hosting Instructions

1. Create a GitHub repository, for example `iron-kingdoms-war-of-brass`.
2. Upload `index.html` to the root of the repository.
3. Commit the file.
4. Open **Settings**.
5. Open **Pages**.
6. Under source, choose **Deploy from a branch**.
7. Select `main` and `/root`.
8. Save.
9. Share the GitHub Pages link with friends.

Players can use the hosted page for loading and saving JSON files. The hosted version still does not require a backend server.

## 24. Suggested Roadmap

### Patch 1 — Weekend Stability Pass

- Add better save filename details.
- Add clearer “next player” prompt after End Turn.
- Add optional player renaming.
- Add a visible rules/help tab.
- Add a quick “copy turn summary” button for Discord.

### Patch 2 — Balance Pass

- Tune unit costs.
- Tune counter multipliers.
- Reduce runaway gold advantage.
- Improve observer catch-up targeting.
- Make fortresses more tactically distinct.

### Patch 3 — Quality-of-Life Pass

- Add undo movement before attack/end turn.
- Add confirm prompts for attacking commander or ending turn with ready units.
- Add clearer attack range overlays.
- Add recruit preview and invalid-placement messaging.

### Patch 4 — Visual Upgrade Pass

- Replace symbolic unit icons with generated sprite-style SVGs.
- Add stronger 2-frame or 4-frame idle variations per unit class.
- Add simple attack flashes and damage number popups.
- Add team-colored banners or bases.

### Patch 5 — Deeper Multiplayer Layer

- Add diplomacy notes.
- Add optional alliances.
- Add neutral mercenary camps.
- Add scenario seeds and named map presets.
- Add optional team mode.

## 25. Long-Term Vision

The long-term version could evolve toward a richer fantasy war game with:

- Persistent factions
- More commander classes
- Commander level-ups
- Better structured scenarios
- More detailed terrain interactions
- Naval or river units
- Spell cards or tactical doctrines
- Campaign rules
- Live multiplayer backend later if the prototype proves fun

The core identity should remain: readable battlefield strategy, commanders that matter, strong counters, and multiplayer that friends can actually play.


---

# Build Notes — IRON KINGDOMS: WAR OF BRASS v0.26.06.10.1815

## Patch Focus

This patch implements the requested next-stage roadmap direction: better game feel, smoother Discord multiplayer handoff, stronger strategic clarity, original GBA-style fantasy steampunk music, on-map battle animation, and clearer terrain impact on combat.

## Implemented

### Audio Identity

- Original WebAudio-generated tactical chiptune loop system.
- Title/menu, active turn, tension, and observer-style themes.
- Combat and turn SFX generated in-code.
- Music and SFX sliders.
- Music and SFX toggles.
- Local storage for audio and animation speed settings.

### Battle Feel

- Attacker lunge animation.
- Defender hit flash.
- Impact burst particles.
- Floating damage numbers.
- Floating terrain-cover reduction text.
- Floating counter-bonus text.
- Light map shake for heavy attacks.
- Animation speed control: Normal, Fast, Off.

### Terrain Combat

Terrain now clearly contributes to battle outcomes.

Current cover tuning:

| Terrain / Structure | Defense |
|---|---:|
| Plains | +0 |
| Roads | +0 |
| Water | +0 |
| Forest | +2 |
| Hills | +1 |
| Mountains | +3 |
| Town | +2 minimum |
| City | +3 minimum |
| Fortress | +4 minimum |

Air/gyro attackers partially ignore terrain cover so air units remain tactically useful.

### Strategic Clarity

- Unit cards now show counter hints.
- Unit cards show current cover bonus.
- XP progress bar added.
- Terrain/combat panel added.
- Combat preview estimates damage, counterattack, target cover, and expected post-exchange HP.
- Player panel shows income per turn.

### Discord Handoff Polish

- Handoff panel under the map.
- Suggested save filename includes game name, version, turn, and current player.
- End Turn logs the expected save handoff.
- Load confirmation summarizes turn number, active player, living players, and observers.

### Map Pacing

- Starting zones are made safer from water blocking.
- Each player gets a home city.
- Each player starts near a neutral town.
- A neutral center fortress creates a contested objective.
- A central road spine helps bring players together.

## Known Limitations

- Battle animations are on-map presentation effects, not separate Warsong-style battle cutscenes yet.
- Music is synthesized in code rather than full composed audio tracks.
- Combat preview uses the same randomized damage model, so exact numbers may vary slightly from final combat results.
- Roads are still a basic terrain type, not auto-connecting road graphics.
- Multiplayer remains JSON hotseat handoff rather than live networking.

## Recommended Next Patches

### Stage 1: Weekend Playability

- Keep testing 2–4 player games over Discord.
- Tighten unit costs and counter balance.
- Add optional turn timer / Discord reminder text.

### Stage 2: Visual and Audio Identity

- Add more distinct commander attack effects.
- Add small faction banners near owned cities.
- Add more music themes or selectable music behavior.

### Stage 3: Multiplayer Handoff Polish

- Add save-file validation warnings.
- Add game/session ID inside save files.
- Add exportable turn summary text for Discord.

### Stage 4: Strategic Depth

- Add unit upkeep or supply only if it improves pacing.
- Add bridge/port mechanics if water maps become important.
- Add commander leveling.

### Stage 5: Scenario / Campaign Content

- Add hand-authored scenario presets.
- Add 2v2 team mode.
- Add asymmetric kingdom traits.

### Stage 6: Optional Online or Cloud Sync

- Investigate Google Drive, GitHub Gist, Firebase, or simple hosted JSON sync after the hotseat version is stable.

## Build Integrity

- `index.html` remains a single-file HTML game.
- No external dependencies were added.
- JavaScript syntax check passed with Node.


## Premium Presentation Branch v0.26.06.10.1912

This branch adds zoomed-in battle presentation, generated PNG assets, terrain battle backdrops, and original generated retro WAV music while preserving Discord JSON multiplayer.


## v0.26.06.10.1954 Premium Map/Animation/Music Update

This branch adds coherent adjacency-based tiles, two-frame ready-unit animation, and a stronger original retro soundtrack. Roads now connect visually, terrain clusters feel more cohesive, and ready units no longer rely on simple floating bob animation.


## v0.26.06.10.2134 — AI Commanders Squads + Epic Soundtrack

This build adds solo/mixed AI play, five AI difficulty levels, commander selection, named commander portraits, squad-size battle presentation, visible casualties/explosions, and an original MP3 soundtrack layer.
