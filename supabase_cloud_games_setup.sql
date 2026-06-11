-- Iron Kingdoms: War of Brass Supabase Cloud Sync setup
-- Paste this into Supabase SQL Editor and run it once.
-- Weekend prototype security: no sign-in required. Anyone with anon key and table knowledge could read/write rows.
-- For a public release, replace these permissive policies with authenticated users and per-game membership checks.

create extension if not exists pgcrypto;

create table if not exists public.cloud_games (
  id uuid primary key default gen_random_uuid(),
  game_code text not null unique,
  join_secret text not null,
  game_version text,
  turn_number integer default 1,
  current_player_index integer default 0,
  current_player_name text,
  cloud_revision integer default 1,
  updated_at timestamptz not null default now(),
  created_at timestamptz not null default now(),
  lock_owner text,
  lock_until timestamptz,
  state_json jsonb not null,
  event_log jsonb default '[]'::jsonb
);

create index if not exists cloud_games_code_secret_idx on public.cloud_games(game_code, join_secret);
create index if not exists cloud_games_updated_idx on public.cloud_games(updated_at desc);

alter table public.cloud_games enable row level security;

drop policy if exists "Weekend prototype can read cloud games" on public.cloud_games;
drop policy if exists "Weekend prototype can create cloud games" on public.cloud_games;
drop policy if exists "Weekend prototype can update cloud games" on public.cloud_games;

create policy "Weekend prototype can read cloud games"
on public.cloud_games for select
to anon
using (true);

create policy "Weekend prototype can create cloud games"
on public.cloud_games for insert
to anon
with check (true);

create policy "Weekend prototype can update cloud games"
on public.cloud_games for update
to anon
using (true)
with check (true);
