#!/bin/bash

./stop_local.sh
docker-machine stop default
docker-machine start default
./start.sh