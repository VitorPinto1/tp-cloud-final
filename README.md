# tp-cloud-final

Front statique (HTML + JS) servi par nginx, déployé sur Cloud Run. 

## Structure

- `public/index.html` — affiche les données de l’API 
- `nginx.conf` — port 8080
- `entrypoint.sh` — remplace `__API_URL__` par `$API_URL` au démarrage
- `Dockerfile` — image nginx:alpine
- `cloudbuild.yaml` — build + push Artifact Registry + déploiement Cloud Run

## Build et déploiement

```bash
# Build local
docker build -t tp-cloud-final .

# Lancer en local (optionnel : passer l’URL de l’API)
docker run -p 8080:8080 -e API_URL tp-cloud-final
```

Déploiement automatique : trigger Cloud Build sur push `main`.


