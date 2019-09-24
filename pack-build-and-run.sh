#!/usr/bin/env bash
set -eux

pack set-default-builder heroku/buildpacks:18

cd ./docker-example/

npm run git-clone

# pack auto-detects this as a Node.js application, the Dockerfile is ignored and not supported here.
pack build nodejs-express-example:buildpack

npm run clean

docker run --init --publish 3000:3000 nodejs-express-example:buildpack
