# Build Notes — v0.26.06.10.2226

## Complete Imported Soundtrack Patch

This build imports the uploaded MP3 soundtrack cues generated from the Iron Kingdoms music prompts and places them into the game audio pipeline.

## Audio Changes
- Added `assets/audio/music/` for user-generated MP3 soundtrack files.
- Mapped all uploaded cues to gameplay states.
- Preserved alternate takes using `_alt` filenames.
- Added soundtrack set selection in the UI:
  - Main takes
  - Alternate takes
  - Auto mix by turn
- Kept the fixed single-track music controller so theme changes, battle views, AI turns, and stingers do not layer multiple tracks.

## Gameplay Preserved
- Solo play with AI-controlled kingdoms.
- Mixed Human / AI / Closed player slots.
- Five AI difficulties.
- Commander selection.
- Commander portraits.
- Squad-count battle view.
- Casualty/explosion presentation.
- Coherent autotiles.
- JSON save/load Discord handoff.

## Track Slots
- Title Theme: prior generated placeholder retained because no new uploaded title track was provided.
- Player Turn Theme: Banners on the March.
- Battle Theme: Engines of War.
- Enemy/Tension Theme: The Brass Legion Advances.
- Commander Danger Theme: The Crown Under Fire.
- Observer Theme: Ghosts in the War Room.
- Victory Fanfare: Banners Rise.
- Defeat Sting: The Last Standard Falls.
- Final Kingdom Theme: prior generated placeholder retained because no new uploaded final/endgame track was provided.

## Syntax Check
JavaScript syntax check passed with Node.

## v0.26.06.10.2226 Complete Imported Soundtrack Addendum

- Replaced the remaining placeholder Title Theme with uploaded `War of Brass` MP3s.
- Replaced the remaining placeholder Final Kingdom / Endgame Theme with uploaded `The Last War of Brass` MP3s.
- Added `_alt` takes for Title Theme and Final Kingdom Theme.
- Updated the soundtrack selector pipeline so Title and Final themes also support Main / Alternate / Auto mix behavior.
- All major gameplay music slots now have imported ElevenLabs MP3 tracks.
