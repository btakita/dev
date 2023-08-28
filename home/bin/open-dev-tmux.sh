#!/bin/sh
cd ~/work/$1
if [ -z $TMUX ]; then
  tmux new -s $1
fi
tmux new-window $SHELL
tmux rename-window $1
tmux move-window -t 0
tmux select-window -t 1
tmux kill-window
tmux select-window -t 0
