#!/bin/sh

ls $1 | \
 	sort | \
	grep -e '\.ts$' | \
	grep -v -e '\.d\.ts$' | \
 	sed 's/\.ts$//' | \
	uniq | \
	grep -v -e '^index$' | \
  sort -k4 | \
	awk '{print "export * from \47./"$1"\47"}'
