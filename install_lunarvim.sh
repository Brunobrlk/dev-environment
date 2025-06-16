# Make sure you have nodejs, python and rust installed via asdf
# Then follow lunar vim installation
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

## Download Nerd Fonts
mkdir -p "$USER_HOME/.local/share/fonts"
cd "$USER_HOME/.local/share/fonts" && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
