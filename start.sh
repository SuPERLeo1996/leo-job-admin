#!/bin/bash

docker_server_addr="leo"
docker_project="leo-job-admin:v1"

docker ps -a | grep ${docker_server_addr}/${docker_project} | awk '{print $1}'|xargs docker stop

docker ps -a | grep ${docker_server_addr}/${docker_project} | awk '{print $1}'|xargs docker -f rm

file=`cd "\`dirname $0\`";pwd`

git pull

mvn clean

mvn -Dtest package

docker build  -t ${docker_server_addr}/${docker_project} .

docker run -d -p 1000:1000 --name leo-job-admin ${docker_server_addr}/${docker_project}





