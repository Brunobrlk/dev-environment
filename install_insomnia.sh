cd "$USER_HOME/tmp"

wget -O insomnia.deb https://updates.insomnia.rest/downloads/ubuntu/latest
sudo dpkg -i insomnia.deb
sudo apt-get install -f -y
