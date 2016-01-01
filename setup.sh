#!/bin/sh


#setup vim
#ENV_DIR has to be set
cd ~
rm .vimrc
ln -s $ENV_DIR/vimrc/_vimrc .vimrc

