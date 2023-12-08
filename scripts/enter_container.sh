#!/bin/bash

# Check if the container name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Please provide the name of the Docker container."
    exit 1
fi

container_name="$1"

# Connect to the Docker container
docker exec -it "$container_name" /bin/bash