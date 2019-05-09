#!/bin/bash
docker-compose -f ./dev/docker-compose.yml build
docker-compose -f ./dev/docker-compose.yml up -d

docker-compose -f ./prod/docker-compose.yml build
docker-compose -f ./prod/docker-compose.yml up -d

docker-compose -f ./nginx-proxy/docker-compose.yml build
docker-compose -f ./nginx-proxy/docker-compose.yml up -d
