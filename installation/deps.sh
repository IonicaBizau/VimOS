#!/bin/bash

# screen
if ! which screen > /dev/null; then
    echo "> Installing screen ..."
    sudo apt-get install screen -y
fi

# elinks
if ! which elinks > /dev/null; then
    echo "> Installing elinks ..."
    sudo apt-get install elinks -y
fi

# vim
if ! which elinks > /dev/null; then
    echo "> Installing VIM ..."
    sudo apt-get install vim -y
fi

# TODO Other apps
