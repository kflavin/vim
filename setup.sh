#!/bin/bash
# Less-than-robust setup script

rm -rf ~/.vim.old
mv ~/.vim ~/.vim.old

# git submodule init
# git submodule update --remote
git submodule update --init --recursive
#if [ $? -ne 0 ]; then
    #git submodule update
#fi

/usr/bin/rsync -avr --exclude '.git/' . ~/.vim
/usr/bin/rsync vimrc ~/.vimrc

# Attempt to build Command-t and YCM
#  Either of these may fail due to external dependencies.
#  See the SETUP file under bundle/

# Make Command-t
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make

# Make YCM
cd ~/.vim/bundle/YouCompleteMe/
./install.py # no clang support
