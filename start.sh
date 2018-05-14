#!/bin/bash

docker-compose pull
docker-compose build
docker-compose up -d

echo Assuming there have been no errors, Paragon services running on docker host, port 8000
read -p "Press any key..."./