#!/bin/bash

if ! ifconfig lo0 | grep -q 192.168.237.237; then
  echo "adding loopback alias"
  ./addloopback.sh;
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR && git pull origin master

docker ps -a | grep -v STATUS | awk '{print $2}' | sort | uniq | xargs -n 1 docker pull

docker-compose -f devenv.yaml up -d
