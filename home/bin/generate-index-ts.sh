#!/bin/sh

cd $1

find * -maxdepth 0 -type d | \
	sort | \
	sort -k4 | \
	awk '{print "export * from \47./"$1"\47"}'

ls . | \
 	sort | \
	grep -e '\.ts$' | \
	grep -v -e '\.d\.ts$' | \
 	sed 's/\.ts$//' | \
	uniq | \
	grep -v -e '^index$' | \
  sort -k4 | \
	awk '{print "export * from \47./"$1".js\47"}'
