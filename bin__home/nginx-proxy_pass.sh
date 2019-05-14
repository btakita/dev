#!/bin/sh

grep proxy_pass /etc/nginx/sites-enabled/* | uniq | sort -k 3
