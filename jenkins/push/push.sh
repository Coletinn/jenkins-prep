#!/bin/bash

echo "*********************"
echo "** PUSHING IMAGE... *"
echo "*********************"

IMAGE="maven-project"

echo "** LOGGING IN... ***"
docker login -u gustavocoleto -p $PASS
echo "** TAGGING IMAGE... "
docker tag $IMAGE:$BUILD_TAG gustavocoleto/$IMAGE:$BUILD_TAG
echo "** PUSHING IMAGE... "
docker push gustavocoleto/$IMAGE:$BUILD_TAG
