#!/bin/bash

if [ ! -f "./nbc" ]; then
    echo "Please copy the nbc executable into this directory"
    exit 1
fi

docker buildx build \
  --platform linux/386 \
  --tag nbc-compiler:latest \
  .
