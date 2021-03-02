#!/bin/sh
DIR_DEFAULT=$(dirname $0)/..
DIR="${DIR:-$DIR_DEFAULT}"

cd $DIR
tmux rename-window dev
tmux split-window -v $SHELL
tmux send-keys 'tig' 'C-m'
tmux select-pane -t 0

cd $DIR/app/dev-web
tmux new-window $SHELL
tmux rename-window processes
tmux split-window -h $SHELL
tmux select-pane -t 0
tmux send-keys 'pnpm run dev' 'C-m'
tmux split-window -v $SHELL
tmux send-keys 'tsc-build.sh -w' 'C-m'
tmux select-pane -t 0
tmux select-pane -t 2

cd $DIR/lib
tmux new-window $SHELL
tmux rename-window lib
tmux split-window -v $SHELL
tmux select-pane -t 0

tmux select-window -t 0
