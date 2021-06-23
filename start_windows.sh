#!/bin/bash
echo ""
echo "=====start nexus repository oss (free)====="
echo -n ">>>> "
date.exe "+%Y%m%d - %H:%M:%S %Z%z"
echo " <<<<"
_CHK_VOLUME=`docker.exe volume ls | awk '{print $2}' | grep 'nexus-data'`
if [ -z ${_CHK_VOLUME} ]; then
  docker.exe volume create --name nexus-data
else
  echo "volume already exist."
fi
docker-compose.exe -f docker-compose.yml build
docker-compose.exe -f docker-compose.yml up -d

sleep 1 
docker-compose.exe -f docker-compose.yml ps
echo "" 
