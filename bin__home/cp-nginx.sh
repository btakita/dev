#!/bin/sh
sudo cp "$1" /etc/nginx/sites-available/
DIR=$(basename $1)
if [ -z $DIR ]; then
  >&2 echo "cp-nginx.sh <path-to-nginx-config-file>"
  exit 1
fi
sudo rm -f /etc/nginx/sites-enabled/$(basename $1)
sudo ln -s /etc/nginx/sites-available/$(basename $1) /etc/nginx/sites-enabled/
