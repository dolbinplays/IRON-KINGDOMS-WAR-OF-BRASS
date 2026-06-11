# Iron Kingdoms Supabase Cloud Sync Setup — v0.26.06.10.2326

This build adds polling-based Supabase cloud handoff while preserving manual JSON Save/Load.

## Fast setup

1. Create a free Supabase project.
2. Open **SQL Editor**.
3. Paste and run `supabase_cloud_games_setup.sql`.
4. In Supabase, go to **Project Settings → API**.
5. Copy your **Project URL** and **anon public key**.
6. Open the game, click **Cloud Setup**, paste both values, and click **Save Cloud Config**.
7. Start or load a game, then click **Host Cloud Game**.
8. Copy the invite code and secret to Discord.
9. Friends click **Join Cloud Game**, paste the code and secret, and the game downloads the current state.

## How cloud turns work

The game uploads the full JSON game state to Supabase when a turn ends. Other clients poll every 7 seconds. When a newer `cloud_revision` appears, they download it and update the game.

Manual **Save Game** and **Load Game** still work as backups.

## Security note

This is a weekend prototype setup. It uses the public anon key and permissive RLS policies so friends can play without accounts. The game code and join secret provide light friction, not strong security.

For a public release, add authentication, memberships per game, and stricter RLS policies.

## Troubleshooting

- **Supabase config missing**: paste Project URL and anon public key in Cloud Setup.
- **No cloud game found**: check the game code and join secret exactly.
- **Another player appears to be taking this turn**: someone else has a temporary turn lock. Wait or override if needed.
- **New cloud turn detected but local unit is pending**: finish the moved unit by attacking or clicking Wait / Finish Unit.
- **CORS/fetch error**: confirm the Supabase URL starts with `https://` and the anon key is complete.
