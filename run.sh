#!/bin/bash

echo "Starting container: timdouglas-nginx"
docker run -d \
  -p 80:80 \
  --name timdouglas-nginx \
  --log-driver=json-file \
  --log-opt max-size=50m \
  --log-opt max-file=4 \
  --restart=on-failure:5 \
  --memory "512MB" \
  -v $(echo $HOME)/projects/timdouglas.co/build:/usr/share/nginx/html/timdouglas.co:ro \
  -v $(echo $PWD)/nginx.conf:/etc/nginx/conf/nginx.conf:ro \
  timdouglas-nginx
