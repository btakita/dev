#!/bin/sh
TEMP=$(mktemp) && vim $TEMP && echo $TEMP
