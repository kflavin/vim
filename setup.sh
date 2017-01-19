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

# Attempt to build YCM

# Make YCM
# Ensure python-dev packages are installed
cd ~/.vim/bundle/YouCompleteMe/
python ./install.py --tern-completer # no clang support
