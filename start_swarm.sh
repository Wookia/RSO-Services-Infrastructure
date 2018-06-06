#!/bin/bash
docker swarm init
docker-compose pull
docker stack deploy --compose-file docker-compose.yml production

echo Assuming there have been no errors, Paragon services running on docker host, port 8000
read -p "Press any key..."./