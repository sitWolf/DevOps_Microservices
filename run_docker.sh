#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=predicthouseprice .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# The container and host ports are in the Dockerfile and make_prediction.sh
docker run -p 8000:80 predicthouseprice