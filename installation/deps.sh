#!/bin/bash

# git
if ! which git > /dev/null; then
    echo "> Installing git ..."
    sudo apt-get install git -y
fi

# gnome-terminal
if ! which gnome-terminal > /dev/null; then
    echo "> Installing gnome-terminal ..."
    sudo apt-get install gnome-terminal -y
fi

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
if ! which vim > /dev/null; then
    echo "> Installing VIM ..."
    sudo apt-get install vim -y
fi

# TODO Other apps
