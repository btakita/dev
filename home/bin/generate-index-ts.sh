#!/bin/sh

ls $1 | \
 	sort | \
	grep -e '\.ts$' | \
 	sed 's/\.ts$//' | \
	uniq | \
	grep -v -e '^index$' | \
	LC_COLLATE=C sort | \
	awk '{print "export * from \47./"$1"\47"}'
