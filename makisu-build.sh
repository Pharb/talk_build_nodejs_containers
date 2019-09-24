#!/usr/bin/env bash
set -eux

cd docker-example

docker run -i --rm \
    -v $(pwd):/makisu-context \
    gcr.io/makisu-project/makisu:v0.1.11 build \
        --commit=explicit \
        --modifyfs=true \
        --tag nodejs-express-example \
        /makisu-context
