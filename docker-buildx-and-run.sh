#!/usr/bin/env bash
set -eux

export DOCKER_CLI_EXPERIMENTAL=enabled
echo "Docker 19.03 includes docker buildx in experimental mode, you are using $(docker version --format '{{.Client.Version}}')."

docker buildx build ./docker-example/ --tag nodejs-express-example:buildx

docker run --init --publish 3000:3000 nodejs-express-example:buildx
