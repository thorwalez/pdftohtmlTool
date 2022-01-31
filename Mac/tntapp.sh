#!/usr/bin/env bash

if [[ "$1" == "stop" ]]; then
  docker stop tnt_app
fi

if [[ "$1" == "build" ]]; then
  cd build
  docker build -t app/tnt:latest --build-arg PHP_VERSION_ARG=7.4  -f Dockerfile.linux . --no-cache
  cd ..
fi

if [ $1 == "update" ]
  then
    docker rmi -f app/tnt:latest
    sh tntapp.sh build
    exit
fi

docker run --rm --name=tnt_app -d -e PHP_VERSION=7.4  -v $(PWD)/data:/var/www/app/data -p80:80  app/tnt:latest