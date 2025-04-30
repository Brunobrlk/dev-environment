#!/bin/bash

cp ~/.alacritty.toml .
cp ~/.bash_aliases .
cp ~/.tmux.conf .
cp -r ~/.config/lvim .

dconf dump /org/cinnamon/desktop/keybindings/ > dconf-shortcuts.conf

# grouped_window_list.json
## Right click into panel > Applets > Config icon of Grouped Window List > Burguer button > Export to a file

# vimium_c
## Google Chrome > Vimium options > Export Settings
