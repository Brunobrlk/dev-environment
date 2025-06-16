cd "$USER_HOME/tmp"

latest_version="3.6.0"
download_url="https://dl.genymotion.com/releases/genymotion-$latest_version/genymotion-$latest_version-linux_x64.bin"
wget "$download_url"
chmod +x genymotion-$latest_version-linux_x64.bin
yes | sudo ./genymotion-$latest_version-linux_x64.bin -d /opt
sudo ln -s /opt/genymotion/genymotion-shell "$USER_HOME/.local/bin"
sudo ln -s /opt/genymotion/gmtool "$USER_HOME/.local/bin"
