#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=18120211/udacity-project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity --image=18120211/udacity-project4 --port=5000 --dry-run=client -o yaml > udacity-project4.yaml
kubectl apply -f udacity-project4.yaml

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl expose pod udacity --type=NodePort

# Describe pod
kubectl describe pod udacity 
# List service
kubectl get svc
