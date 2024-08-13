docker build -t frontend  frontend
docker build -t backend  backend
docker tag frontend registry.digitalocean.com/tester-registry/frontend
docker tag backend registry.digitalocean.com/tester-registry/backend
docker push registry.digitalocean.com/tester-registry/frontend
docker push registry.digitalocean.com/tester-registry/backend
kubectl rollout restart deployment frontend-deployment
kubectl rollout restart deployment backend-deployment
