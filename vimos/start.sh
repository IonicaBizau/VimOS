#!/bin/bash
pkill vim
vim ~/.vimos/welcome.txt -c "vs | :ConqueTerm screen -f"
