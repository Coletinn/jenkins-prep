#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

echo "*******************************"
echo "** BUILDING DOCKER IMAGES... **"
echo "*******************************"

cd jenkins/build/ && docker compose -f docker-compose-build.yaml build --no-cache
