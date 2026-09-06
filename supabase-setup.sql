-- À exécuter dans Supabase : Project > SQL Editor > New query

create table visited_places (
  id text primary key,
  name text not null,
  meta text,
  lat double precision not null,
  lon double precision not null,
  created_at timestamptz default now()
);

-- Row Level Security : nécessaire pour que la clé "anon" puisse lire/écrire.
-- Ici on autorise tout, car c'est un usage personnel sans authentification
-- (même logique de simplicité que tes autres projets perso).
alter table visited_places enable row level security;

create policy "allow all for anon"
  on visited_places
  for all
  using (true)
  with check (true);
