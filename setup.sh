#!/bin/bash

/usr/bin/rsync -avr --exclude '.git/' . ~/.vim
/usr/bin/rsync vimrc ~/.vimrc
