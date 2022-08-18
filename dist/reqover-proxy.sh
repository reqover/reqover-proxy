#!/bin/bash

PROJECT_TOKEN=4zjud4ttejxk
SWAGGER_URL=https://petstore.swagger.io/v2/swagger.json
BASE_PATH=/v2
BRANCH=Proxy
TARGET_SERVICE_URL=https://petstore.swagger.io

docker run -it -p 8080:8080 \
  -e PROJECT_TOKEN=$PROJECT_TOKEN \
  -e SWAGGER_URL=$SWAGGER_URL \
  -e BASE_PATH=$BASE_PATH \
  -e BRANCH=$BRANCH \
  reqover/reqover-proxy:latest --mode reverse:$TARGET_SERVICE_URL
