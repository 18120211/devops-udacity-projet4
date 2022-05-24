#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=18120211/udacity-project4:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "** Logging in"
docker login -u 18120211 -p $DOCKER_HUB_PASS
echo "*** Tagging image ***"
docker tag udacity-project4 $dockerpath
echo "*** Pushing image ***"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
