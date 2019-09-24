#!/usr/bin/env bash
set -eux

docker build ./docker-example/ --tag nodejs-express-example

docker run --init --publish 3000:3000 nodejs-express-example
