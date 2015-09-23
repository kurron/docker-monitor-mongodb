#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation
docker run --detach=true --name=mongodb-service --net=host --publish=8100:8100 --env=NEW_RELIC_APP_NAME=mongodb-service --env=NEW_RELIC_HOST_DISPLAY_NAME=${HOSTNAME} kurron/monitor-mongodb:latest
docker logs --follow=true --tail=25 mongodb-service
