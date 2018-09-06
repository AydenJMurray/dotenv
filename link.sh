#!/usr/bin/env bash

#Get workinbg directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Vim
ln -s $DIR/.vimrc ~/.vimrc

# Fish
mkdir -p ~/.config/fish
ln -s $DIR/config.fish ~/.config/fish/config.fish 
