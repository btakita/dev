#!/bin/sh
termite -e "tmux new $SHELL" $@ & 2>/dev/null
