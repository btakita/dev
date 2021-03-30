#!/bin/sh
cd ~/work/$1
if [ -z $TMUX ]; then
  tmux new -s $1
else
  tmux new-window $SHELL
  tmux swap-window -t 0
  tmux select-window -t 1
  tmux kill-window
fi
tmux rename-window $1