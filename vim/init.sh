#!/bin/bash
# Shellでvimを設定する

cp vimrc ~/.vimrc
mkdir ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim
