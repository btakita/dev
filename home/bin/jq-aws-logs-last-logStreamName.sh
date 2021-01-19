#!/bin/sh
jq -c .logStreams[].logStreamName | tail -n1
