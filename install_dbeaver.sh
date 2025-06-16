cd "$USER_HOME/tmp"

wget -O dbeaver.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver.deb
sudo apt-get install -f -y
