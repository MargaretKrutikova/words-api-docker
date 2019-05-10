#!/bin/bash
cd ./nginx-proxy/frontend/data
git pull
sudo docker kill nginx-proxy
cd ../../
sudo docker-compose up -d --force-recreate --no-deps --build
