#!/bin/bash

# Author: Bruno Guimarães
# Description: Brief description of what the script does
# Version: 1.0
# Last Updated: Date

# Dependencies: go - Installation
curl -o "$USER_HOME/tmp/go.tar.gz" https://dl.google.com/go/go1.24.4.linux-amd64.tar.gz
cd "$USER_HOME/tmp"
tar -xzf go.tar.gz
export PATH="$PATH:$USER_HOME/tmp/go/bin"

# Install asdf
git clone https://github.com/asdf-vm/asdf.git "$USER_HOME/Src" --branch v0.18.0
cd "$USER_HOME/Src/asdf"
make

# Configure asdf
## Add language/framework asdf plugins
asdf plugin add neovim
asdf plugin add gradle
asdf plugin add java
asdf plugin add kotlin
asdf plugin add python
asdf plugin add nodejs
asdf plugin add rust
asdf plugin add golang
asdf plugin add flutter
asdf plugin add sqlite

## Install SQLite
asdf install sqlite latest
asdf set sqlite latest

## Install Gradle
asdf install gradle 3.3
asdf install gradle 7.6.3
asdf install gradle latest
asdf set gradle latest

## Install Kotlin
asdf install kotlin 1.8.0
asdf install kotlin latest
asdf set kotlin latest

## Install Java
asdf install java corretto-8.392.08.1
asdf install java liberica-1.8.0
asdf install java openjdk-17
asdf install java latest
asdf set java latest 

## Install Python
asdf install python latest
asdf set python latest

## Install NodeJS
asdf install nodejs latest
asdf set nodejs latest

## Install Rust
asdf install rust latest
asdf set rust latest

## Install Golang
asdf install golang latest
asdf set golang latest

## Install flutter
asdf install flutter latest
asdf set flutter latest
flutter doctor --android-licenses
flutter doctor

## Install Neovim
## For some reason it only works in the home kkkkkkkkkkkkkkkk
cd
asdf install neovim latest
asdf set neovim latest

