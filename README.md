# My Roadtrip — déploiement

## 1. Créer le projet Supabase
1. https://supabase.com → New project.
2. Une fois créé : **SQL Editor** → colle le contenu de `supabase-setup.sql` → Run.
3. **Project Settings → API** : récupère `Project URL` et la clé `anon public`.

## 2. Configurer le fichier
Ouvre `index.html`, tout en haut du `<script>` :

```js
const SUPABASE_URL = 'https://TON-PROJET.supabase.co';
const SUPABASE_ANON_KEY = 'TON_ANON_KEY';
```

Remplace par tes vraies valeurs.

## 3. GitHub
```
git init
git add .
git commit -m "My Roadtrip"
git remote add origin https://github.com/TON-COMPTE/my-roadtrip.git
git push -u origin main
```

## 4. Vercel
1. https://vercel.com → Add New → Project → importe le repo GitHub.
2. Aucune configuration nécessaire (site statique, `vercel.json` vide déjà présent).
3. Deploy.

Tu obtiens une URL du style `my-roadtrip.vercel.app`, accessible et modifiable depuis n'importe quel appareil.

## À savoir
- Aucune authentification : quiconque connaît l'URL peut voir et modifier la carte.
  C'est volontairement simple pour un usage perso — comme tes autres projets.
  Si tu veux la protéger un peu, on peut ajouter un code d'accès simple plus tard.
- La recherche de villes reste embarquée dans le fichier (pas d'appel réseau externe),
  donc rapide et fiable. Maintenant que le site tourne en dehors du bac à sable Claude,
  on pourrait aussi rebrancher une recherche plus complète (avec les villages) si tu veux.
