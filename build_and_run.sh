#!/bin/bash

# Define the image name
IMAGE_NAME="my-python-app"

# Build the Docker image
docker build -t $IMAGE_NAME -f Dockerfile .

# Run the Docker container
docker run -p 8000:8000 $IMAGE_NAME