#!/bin/sh
grep proxy_pass /etc/nginx/sites-enabled/* | uniq | awk '{print $NF}' | sed 's/http:\/\/localhost://g' | sed 's/;//' | sort | tail -n1 | awk '{print $1+1}'
