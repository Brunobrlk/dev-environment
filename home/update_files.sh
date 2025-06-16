#!/bin/bash

rsync -av ~/.bashrc .
rsync -av ~/.bash_aliases .
rsync -av ~/.bash_env_vars .

rsync -av ~/Android/android_studio_settings-*.zip .

rsync -av ~/.config/ideavim/ideavimrc .config
rsync -av ~/.config/alacritty .config
rsync -av ~/.config/lvim .config
rsync -av ~/.config/git .config
rsync -av ~/.config/ideavim .config
rsync -av ~/.config/mpd .config
rsync -av ~/.config/rmpc .config
rsync -av ~/.config/starship .config
rsync -av ~/.config/PCSX2 .config
rsync -av --exclude='plugins' ~/.config/tmux .config

dconf dump /org/cinnamon/desktop/keybindings/ > dconf-shortcuts.conf

# .ssh and .gnupg are sensitive folders, thus save only locally

# grouped_window_list.json
## Right click into panel > Applets > Config icon of Grouped Window List > Burguer button > Export to a file

# vimium_c
## Google Chrome > Vimium options > Export Settings
