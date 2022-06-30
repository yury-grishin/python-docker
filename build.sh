#!/bin/bash

source docker.env

docker image build --no-cache=true \
                   --rm=true \
                   --build-arg BUILD_DATE="$(date +'%Y-%m-%d %H:%M:%S %Z')" \
                   --tag ${IMAGE_NAME}:${IMAGE_TAG} .