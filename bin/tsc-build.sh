#!/bin/sh
ROOT_DIR=$(dirname $(dirname "$0"))
tsc -b \
  $(ls $ROOT_DIR/packages/ctx-core/packages/*/tsconfig.json | xargs dirname) \
  $(ls $ROOT_DIR/packages/lerna-template/packages/*/tsconfig.json | xargs dirname) \
  $(ls $ROOT_DIR/packages/*/tsconfig.json | grep -v ctx-core | grep -v lerna-template | xargs dirname) \
  $@
