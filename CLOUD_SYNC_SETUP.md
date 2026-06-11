# Cloud Sync Setup — Iron Kingdoms: War of Brass

Build `v0.26.06.11.0758`

## 1. Create Supabase Project

Create a free Supabase project. Keep **Data API** enabled. For this weekend prototype, automatic exposure of new tables and RLS enabled are fine because the provided SQL creates explicit policies.

## 2. Run SQL Script

Open Supabase → **SQL Editor** → **New Query**.

Paste the contents of:

```text
supabase_cloud_games_setup.sql
```

Click **Run Query**.

Confirm the table exists:

```text
cloud_games
```

## 3. Find Project URL and Public Key

Use the base project URL only:

```text
https://your-project-id.supabase.co
```

Do not include `/rest/v1/`.

For the key, use the **anon public** or **publishable** key. Never paste the service role key into the game.

## 4. Configure the Game

Open the game and click **Cloud Setup**.

Paste:

```text
SUPABASE_URL = https://your-project-id.supabase.co
SUPABASE_ANON_KEY = your anon/publishable key
```

Click **Save Cloud Config**.

## 5. Host a Cloud Game

1. Start a New Game.
2. Set Human/AI slots and commander choices.
3. Name Human player slots for your friends.
4. Click **Host Cloud Game**.
5. Share the game code and secret in Discord.

## 6. Join and Claim a Kingdom

1. Click **Join Cloud Game**.
2. Enter the game code and secret.
3. Find your named kingdom in **Kingdom Claims**.
4. Click **Claim Slot**.

Only the player who claimed the current kingdom can control units on that kingdom’s turn.

## 7. Waiting View

If it is not your turn:

- You can still view the map.
- Fog of war is shown from your claimed kingdom’s perspective.
- You cannot move, attack, recruit, or end turn.
- The game displays whose turn it is and plays waiting/observer-style music.

## 8. Security Notes

This is a weekend prototype. The cloud game syncs the full JSON state to browsers, so fog of war is enforced by the UI, not by a private server. This is fine for trusted friends but not secure against cheating.

A public release should add authenticated users and a server/edge function that only returns filtered player-visible state.
