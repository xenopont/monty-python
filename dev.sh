#!/usr/bin/env bash

echo "Building containers..."
echo ""
docker build -t python-server-image --file ./docker/dev.dockerfile .

echo "Starting containers..."
echo ""
docker-compose -p monty-python --file ./docker/dev.composition.json up -d

docker exec -it python-server ash
# here your dev session is running

echo "Stopping servers..."
docker-compose --file ./docker/dev.composition.json stop

# uncomment the following two lines if the containers do not stop automatically
docker stop python-server

echo "Done."
