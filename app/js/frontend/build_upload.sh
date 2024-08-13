docker build -t frontend  .
docker tag frontend registry.digitalocean.com/tester-registry/frontend
docker push registry.digitalocean.com/tester-registry/frontend
kubectl rollout restart deployment frontend-deployment