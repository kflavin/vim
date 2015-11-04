#!/bin/bash

rm -rf ~/.vim.old
mv ~/.vim ~/.vim.old

git submodule init
git submodule update --remote
if [ $? -ne 0 ]; then
    git submodule update
fi
/usr/bin/rsync -avr --exclude '.git/' . ~/.vim
/usr/bin/rsync vimrc ~/.vimrc
