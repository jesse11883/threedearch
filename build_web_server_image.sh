#!/bin/sh
export CURRENT_UID=$(id -u):$(id -g) 

export PUID=`id -u $USER`
export PGID=`getent group docker | cut -d: -f3`


# docker image build --no-cache --tag cpmentor-dev -f Dockerfile.dev .
docker image build --no-cache \
                --build-arg USER_NAME=node \
                --build-arg PUID=$PUID \
                --build-arg PGID=$PGID \
                --tag web-server -f Dockerfile.dev .