#!/bin/bash

source docker.env

docker run -it \
    --rm \
    --name ${IMAGE_NAME}-container \
    --env MOUNTED_WORKDIR="${MOUNTED_WORKDIR}" \
    --mount type=bind,source="${MOUNTED_WORKDIR}",target=/u02 \
    ${IMAGE_NAME}:${IMAGE_TAG} "$@"