#!/bin/sh


#setup vim
#ENV_DIR has to be set
cd ~
rm .vimrc
ln -s $ENV_DIR/vimrc/_vimrc .vimrc
mkdir -p ~/.config/vim/bundle/plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/vim/bundle/Vundle.vim

