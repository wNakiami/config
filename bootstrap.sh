#! /usr/bin/env bash

#set -x
set -e

ENV=$HOME/.env_init
if [ ! -d $ENV ]
then
    echo "clone env_init ..."
    git clone https://github.com/wNakiami/env_init.git $ENV
fi

cd $ENV
sh update.sh

INIT=$HOME/.local/config/init.sh

echo $INIT >> $HOME/.bashrc
echo "umask 022" >> $HOME/.bashrc

if [ -f "$HOME/.zshrc" ]
then
    echo $INIT >> $HOME/.zshrc
    echo "umask 022" >> $HOME/.zshrc
fi

echo 'init over'
