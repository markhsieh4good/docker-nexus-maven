#!/bin/bash
echo ""
echo "=====stop nexus repository oss (free)====="
echo -n ">>>> "
date.exe "+%Y%m%d - %H:%M:%S %Z%z"
echo " <<<<"
echo ""
echo "current working status ..."
docker-compose.exe -f docker-compose.yml ps
sleep 2
docker-compose.exe -f docker-compose.yml down 

sleep 1 
echo "" 
