# ScoutAPM - Introduction to Kubernetes

This repository hosts the exercise of containerizing a sample NodeJS app and running it on Kubernetes.

```
# Install pre-requisites
brew bundle

# Build docker image
docker build -t sarmadsaleem/scout-apm:node-app .

# Run docker container
docker run -p 3000:3000 -it --rm sarmadsaleem/scout-apm:node-app

# Verify it works
curl http://localhost:3000

# Let's use Docker Hub for a free public registry: https://hub.docker.com/
# Once you have an account and a registry, you can login on CLI like so
docker login --username sarmadsaleem

# Push container to registry
docker push sarmadsaleem/scout-apm:node-app

# Select correct Kubernetes context
kubectl config use-context docker-desktop

# Apply Kubernetes manifest
kubectl apply -f k8s/app.yaml

```
