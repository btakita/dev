#!/bin/sh
mkdir -p ~/bin
cp ./home/bin/* ~/bin/
mkdir -p ~/.zshrc.d
cp -R ./home/.zshrc.d/* ~/.zshrc.d/
