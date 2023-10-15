#!/bin/sh
cd ~/work/$1
if [ -z $TMUX ]; then
  tmux new -s $1
  tmux move-window -t 0
else
  tmux new-window -n $1 $SHELL
  tmux move-window -t 0
  tmux select-window -l
  tmux kill-window
fi
