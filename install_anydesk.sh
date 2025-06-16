cd "$USER_HOME/tmp"

sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor --yes --output /etc/apt/trusted.gpg.d/anydesk.gpg
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
apti anydesk
