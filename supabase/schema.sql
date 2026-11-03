create table if not exists public.gagyeboo_data (
 user_id uuid primary key references auth.users(id) on delete cascade,
 data jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.gagyeboo_data enable row level security;
create policy "read own data" on public.gagyeboo_data for select using (auth.uid()=user_id);
create policy "insert own data" on public.gagyeboo_data for insert with check (auth.uid()=user_id);
create policy "update own data" on public.gagyeboo_data for update using (auth.uid()=user_id) with check (auth.uid()=user_id);
