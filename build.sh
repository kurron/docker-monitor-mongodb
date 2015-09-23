#!/bin/bash

docker rmi kurron/monitor-mongodb:latest
docker build --pull --tag="kurron/monitor-mongodb:latest" .
docker images
