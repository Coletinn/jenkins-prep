#!/bin/bash

echo "**********************"
echo "** BUILDING JAR... ***"
echo "**********************"

WORKSPACE=/home/gustavo/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
