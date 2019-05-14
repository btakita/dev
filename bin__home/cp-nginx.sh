#!/bin/sh
sudo cp "$1" /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/$(basename $1) /etc/nginx/sites-enabled/
