#!/bin/bash

git submodule init
git submodule update --remote
/usr/bin/rsync -avr --exclude '.git/' . ~/.vim
/usr/bin/rsync vimrc ~/.vimrc
