#!/bin/bash

echo "This build is only useful for development. It won't affect the production images, should only be run once."

docker-compose -f docker-compose.dev.yml build
