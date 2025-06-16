sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update
sudo apt install alacritty -y

mkdir -p "$USER_HOME/.local/share/themes/Alacritty"
cd "$USER_HOME/.local/share/themes/Alacritty" && curl -LO --output . https://github.com/catppuccin/alacritty/raw/main/catppuccin-macchiato.toml
