#!/bin/sh
DEV_DIR_DEFAULT=~/work/dev/
DEV_DIR="${DEV_DIR:-$DEV_DIR_DEFAULT}"

cd $DEV_DIR

tmux rename-window dev
tmux split-window -v
tmux send-keys 'tig' 'C-m'
tmux select-pane -t 0

cd $DEV_DIR

tmux new-window
tmux rename-window build-typescript
tmux send-keys 'watch-ts-toposort.sh' 'C-m'
tmux select-pane -t 0

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

cd $DEV_DIR/packages/sapper-template

tmux new-window
tmux rename-window sapper-template
tmux split-window -v
tmux split-window -v
tmux select-layout even-vertical
tmux select-pane -t 1
tmux send-keys 'yarn run dev' 'C-m'
tmux select-pane -t 2
tmux send-keys 'tig' 'C-m'

cd $DEV_DIR/packages/web

tmux new-window
tmux rename-window web
tmux send-keys 'yarn run dev' 'C-m'
tmux split-window -v
tmux select-layout even-vertical
tmux select-pane -t 0

tmux select-window -t 0
