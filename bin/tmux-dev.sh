#!/bin/sh
DEV_DIR_DEFAULT=~/work/dev/
DEV_DIR="${DEV_DIR:-$DEV_DIR_DEFAULT}"

cd $DEV_DIR
tmux rename-window dev
tmux split-window -v
tmux send-keys 'tig' 'C-m'
tmux select-pane -t 0

cd $DEV_DIR/packages/_dev-web
tmux new-window
tmux rename-window processes
tmux split-window -h
tmux select-pane -t 0
tmux send-keys 'yarn run dev' 'C-m'
tmux split-window -v
tmux send-keys 'watch-ts-toposort.sh' 'C-m'
tmux select-pane -t 0
tmux select-pane -t 2

cd $DEV_DIR/packages/ctx-core
tmux new-window
tmux rename-window ctx-core
tmux split-window -v
tmux send-keys 'tig' 'C-m'
tmux select-pane -t 0

cd $DEV_DIR/packages/dev-sapper-template
tmux new-window
tmux rename-window dev-sapper-template
tmux split-window -v
tmux select-pane -t 1
tmux send-keys 'tig' 'C-m'
tmux select-pane -t 0

cd $DEV_DIR/packages/sapper-template
tmux new-window
tmux rename-window sapper-template
tmux split-window -h
tmux select-pane -t 0
tmux send-keys 'yarn run dev' 'C-m'
tmux split-window -v
tmux send-keys 'tig' 'C-m'
tmux select-pane -t 1

tmux select-window -t 0
