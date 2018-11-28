#!/bin/bash

#Get working directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VIMRC="/home/$USER/.vimrc"
FISHCONFIG="/home/$USER/.config/fish/config.fish"

# Vim
if [ -e $VIMRC ] ; then
    echo ".vimrc already exists, removing..."
    rm $VIMRC
fi
echo "Linking .vimrc"
ln -s $DIR/.vimrc ~/.vimrc

# Fish
if [ -e $FISHCONFIG ] ; then
    echo "config.fish already exists, removing..."
    rm $FISHCONFIG
fi
mkdir -p ~/.config/fish
echo "Linking config.fish"
ln -s $DIR/config.fish $FISHCONFIG
