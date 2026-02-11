# tp-cloud-final

Front statique (HTML + JS) servi par nginx, déployé sur Cloud Run. Aucun Node.js.

## Structure

- `public/index.html` — page unique, affiche les données de l’API (variable d’env `API_URL`)
- `nginx.conf` — nginx en écoute sur le port 8080
- `entrypoint.sh` — remplace `__API_URL__` par `$API_URL` au démarrage
- `Dockerfile` — image nginx:alpine
- `cloudbuild.yaml` — build + push Artifact Registry + déploiement Cloud Run

## Build et déploiement

```bash
# Build local
docker build -t tp-cloud-final .

# Lancer en local (optionnel : passer l’URL de l’API)
docker run -p 8080:8080 -e API_URL=https://VOTRE_API.region.run.app tp-cloud-final
```

Déploiement automatique : trigger Cloud Build sur push `main` (voir `cloudbuild.yaml`).

Sur Cloud Run, définir la variable d’environnement `API_URL` (ex. `https://monProjet.region.run.app`) pour que le front appelle la bonne API.

## Équipe

Renseigner les noms / prénoms dans `public/index.html` (ligne « Équipe »).
