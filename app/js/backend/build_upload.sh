docker build -t backend  .
docker tag backend registry.digitalocean.com/tester-registry/backend
docker push registry.digitalocean.com/tester-registry/backend
kubectl rollout restart deployment backend-deployment