#!/bin/sh
for last; do true; done
array=( $@ )
len=${#array[@]}
DIR=${array[$len-1]}
ARGS=${array[@]:0:$len-1}
cd "$DIR"
st "$ARGS" & disown
