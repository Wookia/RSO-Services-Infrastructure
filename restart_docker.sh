#!/bin/bash

./stop_local.sh
docker-machine stop default
docker-machine start default
docker-machine env
./start_local.sh