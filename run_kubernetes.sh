#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sitwolf/devops-ml

# Step 2
# Run the Docker Hub container with kubernetes
# https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands
# Start a single instance of predicthouseprice pod in the namespace of mynamespace
# https://stackoverflow.com/questions/55981949/what-are-generators-in-kubernetes-kubectl
kubectl run predicthouseprice\
    --image=$dockerpath\
    --port=80\
    --labels app=predicthouseprice

# Step 3:
# List kubernetes pods
# https://kubernetes.io/docs/reference/kubectl/cheatsheet/
kubectl get pods

# Step 4:
# Forward the container port to a host
# https://kubernetes.io/docs/reference/kubectl/cheatsheet/
kubectl port-forward predicthouseprice 8000:80