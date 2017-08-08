#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR && git pull origin master

docker ps -a | grep -v STATUS | awk '{print $2}' | sort | uniq | xargs -n 1 docker pull

docker-compose -f devenv.yaml up -d
