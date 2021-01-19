#!/bin/sh

curl -sf https://up.apex.sh/install | BINDIR=./ sh
./up upgrade
sudo mv up /usr/local/bin/up

