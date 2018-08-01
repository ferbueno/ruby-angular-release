#!/bin/bash

ENVIRONMENT="$1"

if [ -z $ENVIRONMENT ]
  then
    ENVIRONMENT="dev"
fi

if [ $ENVIRONMENT = "production" ]
    then
    ENVIRONMENT="prod"
    ######## Run Angular builds
    DOCKER_RELEASE_PATH=$PWD
    cd ../ui
    ng build --prod
    cd $DOCKER_RELEASE_PATH
    eval "docker-compose -f docker-compose.$ENVIRONMENT.yml build"
fi

echo "Running deploy in $ENVIRONMENT mode..."
eval "docker-compose -f docker-compose.$ENVIRONMENT.yml up -d"

echo "All containers are deployed..."