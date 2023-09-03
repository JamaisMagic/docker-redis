#!/usr/bin/bash


git pull origin main:main && \
if [ "$1" == "up" ]; then
    docker-compose -p docker_redis -f ./docker-compose.yml up -d
elif [ "$1" == "stop" ]; then
    docker-compose -p docker_redis -f ./docker-compose.yml stop
elif [ "$1" == "rm" ]; then
    docker-compose -p docker_redis -f ./docker-compose.yml rm
else
    echo "Unexpected parameter: $1"
fi

docker rmi $(docker images -f "dangling=true" -q)
