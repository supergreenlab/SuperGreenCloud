#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 services..."
  exit 1
fi


services=`docker-compose config --services`
filter="$@"
if [ "$#" -gt 1 ]; then
  filter=`echo -n "$@" | sed -n -e 's/ /|/pg'`
fi
services=`echo -n $services | sed -n -E "s/($filter)//pg"`
ENV=development ./start.sh $services
