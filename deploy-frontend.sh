#!/bin/bash
cd ./nginx-proxy/frontend/data
git pull
sudo docker restart nginx-proxy
