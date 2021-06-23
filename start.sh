#!/bin/bash
echo ""
echo "=====start nexus repository oss (free)====="
echo -n ">>>> "
date "+%Y%m%d - %H:%M:%S %Z%z"
echo " <<<<"
_CHK_VOLUME=`sudo docker volume ls | awk '{print $2}' | grep 'nexus-data'`
if [ -z ${_CHK_VOLUME} ]; then
  sudo docker volume create --name nexus-data
else
  echo "volume already exist."
fi
sudo docker-compose -f docker-compose.yml build
sudo docker-compose -f docker-compose.yml up -d

sleep 1 
sudo docker-compose -f docker-compose.yml ps
echo "" 
