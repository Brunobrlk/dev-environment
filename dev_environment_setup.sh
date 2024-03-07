# Setup GUI
## Install Theme
mkdir -p ~/.themes
unzip ~/Downloads/Adapta-Nokto.zip
mv ~/Downloads/Adapta-Nokto ~/.themes/
gsettings set org.cinnamon.desktop.interface gtk-theme 'Adapta-Nokto'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Adapta-Nokto'
gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y-Dark-Blue'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Adapta-Nokto'

## Changing background
gsettings set org.cinnamon.desktop.background picture-uri "file://$HOME/Pictures/Wallpapers/SaoWallpaper.png"


# Install common dependencies
sudo apt install -y build-essential curl libbz2-dev libffi-dev liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libxmlsec1-dev llvm make tk-dev wget xz-utils zlib1g-dev bash file git unzip xz-utils zip clang cmake ninja-build libgtk-3-dev

# Install and configure asdf 
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

echo ". \"\$HOME/.asdf/asdf.sh\"" >> ~/.bashrc
echo ". \"\$HOME/.asdf/completions/asdf.bash\"" >> ~/.bashrc
source ~/.bashrc

## Add language/framework asdf plugins
asdf plugin-add neovim
asdf plugin-add gradle
asdf plugin-add java
asdf plugin-add kotlin
asdf plugin-add python
asdf plugin-add nodejs
asdf plugin-add rust
asdf plugin-add flutter

## Install Neovim
asdf install neovim latest
asdf global neovim latest

## Install Gradle
asdf install gradle 3.3
asdf install gradle 7.6.3
asdf install gradle latest
asdf global gradle latest

## Install Kotlin
asdf install kotlin 1.8.0
asdf install kotlin latest
asdf global kotlin latest

## Install Java
asdf install java corretto-8.392.08.1
asdf install java liberica-1.8.0
asdf install java openjdk-17
asdf install java latest
asdf global java latest 

## Install Python
asdf install python latest
asdf global python latest

## Install NodeJS
asdf install nodejs latest
asdf global nodejs latest

## Install Rust
asdf install rust latest
asdf global rust latest

## Install flutter
asdf install flutter latest
asdf global flutter latest
flutter doctor --android-licenses
flutter doctor

# Install Lunar Vim
# Make sure you have nodejs, python and rust installed via asdf
# Then follow lunar vim installation

LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

## Download Nerd Fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

### Change your terminal font in order to have DroidSans working
