#!/bin/bash
echo ""
echo "=====stop nexus repository oss (free)====="
echo -n ">>>> "
date "+%Y%m%d - %H:%M:%S %Z%z"
echo " <<<<"
echo ""
echo "current working status ..."
sudo docker-compose -f docker-compose.yml ps
sleep 2
sudo docker-compose -f docker-compose.yml down 

sleep 1 
echo "" 
