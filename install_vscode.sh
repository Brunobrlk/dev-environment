cd "$USER_HOME/tmp"

curl -L -o vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo dpkg -i vscode.deb
sudo apt install -f -y
