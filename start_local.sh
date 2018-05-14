#!/bin/bash

docker-compose -f docker-compose.dev.yml pull
docker-compose -f docker-compose.dev.yml build
docker-compose -f docker-compose.dev.yml up -d

echo Assuming there have been no errors, Paragon services running on docker host, port 8000
read -p "Press any key..."