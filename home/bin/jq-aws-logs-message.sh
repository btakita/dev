#!/bin/sh
jq -c '.events[].message' | grep '\\"' | jq fromjson | jq .message
