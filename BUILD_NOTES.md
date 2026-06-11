# Build Notes — v0.26.06.10.2326

## Supabase Cloud Sync + Move-Then-Attack

Added a cloud multiplayer panel that can host/join Supabase cloud games using direct browser REST calls. No custom server, Node, npm, Firebase, or build process is required.

### Added

- Host Cloud Game
- Join Cloud Game
- Copy Invite Code
- Cloud Sync On/Off
- Force Sync Now
- Leave Cloud Game
- In-game Supabase URL / anon key setup stored in localStorage
- Polling-based auto-download every 7 seconds
- Auto-upload on End Turn and AI turn completion via the normal turn flow
- Simple browser identity and turn lock support
- SQL setup script: `supabase_cloud_games_setup.sql`
- Cloud setup guide: `CLOUD_SYNC_SETUP.md`

### Gameplay upgrade

Units can now move and then attack from their new position. After moving, the unit remains selected and attack targets are highlighted. Use **Wait / Finish Unit** if there is no attack or you do not want to attack.

### Preserved

- Manual JSON Save/Load fallback
- AI solo play
- Imported MP3 soundtrack
- Commander selection
- Squad battle representation
- Zoomed battle view
- Fog of war, terrain defense, recruitment, economy, observer system, and victory logic

### Known limitations

- Cloud sync uses polling rather than realtime subscriptions.
- Weekend prototype RLS policies are intentionally low-friction, not public-release security.
- Mid-action saves prompt to finish a moved unit first.
