#!/bin/bash

DOTFILES=${HOME}/dotfiles/vim/

echo "create vimrc symlink at home directory"

ln -s ${DOTFILES}.vimrc ~/.vimrc

#[[ -d ~/.vim ]] || mkdir -p ~/.vim
ln -s ${DOTFILES}.vim/rc ~/.vim
