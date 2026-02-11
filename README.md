# tp-cloud-final

Front statique (HTML, JS, nginx), déployé sur Cloud Run. 



## Build et déploiement

```bash
# Build local
docker build -t tp-cloud-final .

# Lancer en local 
docker run -p 8080:8080 -e tp-cloud-final
```

Déploiement automatique : trigger Cloud Build sur push `main`.


