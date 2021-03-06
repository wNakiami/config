#! /usr/bin/env bash

#set -x
set -e

ENV=$HOME/.env_init
if [ ! -d $ENV ]
then
    git clone https://github.com/wNakiami/env_init.git $ENV
fi

cd $ENV
bash update.sh
bash git.sh

INIT=$HOME/.local/etc/init.sh

if [ -f "$HOME/.bashrc" ]
then
    echo "source $INIT" >> $HOME/.bashrc
    echo "umask 023" >> $HOME/.bashrc
fi

if [ -f "$HOME/.zshrc" ]
then
    echo "source $INIT" >> $HOME/.zshrc
    echo "umask 023" >> $HOME/.zshrc
fi

echo "source $HOME/.vim/init.vim" >> $HOME/.vimrc

echo 'init over'
