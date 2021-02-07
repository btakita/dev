#!/bin/sh

ls $1 | \
 	sort | \
 	sed 's/\.ts$//' | \
	uniq | \
	grep -v -e '^index$' | \
	LC_COLLATE=C sort | \
	awk '{print "import \47./"$1"\47"}'
