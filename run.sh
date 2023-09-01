#!/bin/bash

# Build the Docker image
docker build -t hello-world .

# Create the Docker network if it doesn't exist
docker network create hello-world > /dev/null 2>&1 || true

# Run the Docker container
docker run -d --name hello-world --network hello-world -p 3000:3000 hello-world
