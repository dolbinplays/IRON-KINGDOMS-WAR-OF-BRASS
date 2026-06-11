# Iron Kingdoms: War of Brass — Build Notes

## Build

`v0.26.06.11.0713` — Cloud Lobby + Kingdom Claim

## Summary

This patch builds on the Supabase Cloud Sync version and adds the missing “who am I?” layer for cloud games.

## Added

- **Kingdom Claim system** inside the Cloud Multiplayer panel.
- Joined players can claim a Human kingdom slot, ideally the slot the host pre-named for them during New Game setup.
- Claims are stored in the shared cloud game state and synced through Supabase.
- Only the browser that claimed the current kingdom can move, attack, recruit, or end turn during that kingdom’s turn.
- Waiting players can still open the game and look at the map.
- While waiting, the map renders from the waiting player’s claimed kingdom/fog-of-war view instead of the current player’s view.
- Waiting players see a clear banner showing whose turn it is.
- Waiting players use the existing calmer waiting/observer music behavior instead of the active turn theme.
- Cloud Multiplayer panel now includes claim rows for every player slot with Claim / Release / Override buttons.
- Added local cloud display name control for claims.

## Preserved

- Supabase polling cloud handoff.
- Manual JSON Save / Load backup.
- Move-then-attack tactical flow.
- AI players and solo play.
- Commander selection.
- Imported MP3 soundtrack.
- Coherent tile assets.
- Zoomed battle view.
- Squad-size battle representation.
- Observer system.
- Existing Supabase SQL table; no new table migration required for this patch.

## Limitations

- This is still friend-trust fog of war. The full game JSON is synced to browsers, so a determined player could inspect the raw state in browser tools.
- True secret fog of war would require a server/edge function that sends each player only their filtered state.
- Claim override is allowed with confirmation so the host/friends can recover from a stale or accidental claim.

## Syntax Check

JavaScript syntax check passed.
