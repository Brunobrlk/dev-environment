cd "$USER_HOME/tmp"

curl -L -o postman.tar.gz https://dl.pstmn.io/download/latest/linux64
tar -xzf postman.tar.gz
sudo mv Postman /opt
sudo ln -s /opt/Postman/Postman /usr/local/bin/postman

## Creating Desktop entry
cat <<EOF > "$USER_HOME/.local/share/applications/Postman.desktop"
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/opt/Postman/app/Postman %U
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOF
