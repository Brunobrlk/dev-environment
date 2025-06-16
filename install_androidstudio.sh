#!/bin/bash

USER_HOME="$HOME"

# Check if the resources folder exist
if [ ! -d "$USER_HOME/Downloads/Android-Studio-Versions" ]; then
  echo "Directory $USER_HOME/Downloads/Android-Studio-Versions does not exist."
  exit 1
fi

# Create "Android" folder if doesn't exist
mkdir -p "$USER_HOME/Android"

# Iterate through all .tar.gz files in the current folder
for file in "$USER_HOME/Downloads/Android-Studio-Versions/"*.tar.gz; do
  # Extract the .tar.gz file to Android folder
  tar -zxvf "$file" -C $USER_HOME/Android

  SED_CUT_VERSION='s/\(.*\)-.*2.*$/\1/'  
  SED_MINUS_TO_SPACES='s/-/ /g'
  SED_CAPITALIZE='s/\b\(.\)/\u\1/g'

  DIR=$(basename $(echo "$file%.tar.gz" | sed -e "$SED_CUT_VERSION"))
  NAME=$(echo "$DIR" | sed -e "$SED_MINUS_TO_SPACES" -e "$SED_CAPITALIZE")

  mv $USER_HOME/Android/android-studio "$USER_HOME/Android/$DIR"

  cat <<EOF > "$USER_HOME/Desktop/$DIR.desktop"
  [Desktop Entry]
  Version=1.0
  Type=Application
  Name=Android Studio
  Icon=$USER_HOME/Android/$DIR/bin/studio.svg
  Exec="$USER_HOME/Android/$DIR/bin/studio.sh" %f
  Comment=The Drive to Develop
  Categories=Development;IDE;
  Terminal=false
  StartupWMClass=jetbrains-studio
  StartupNotify=true
  Name[en_US]=$NAME
EOF
done

chmod 755 "$USER_HOME/Desktop/android-studio-"*

# Add emulators to your environment
mv "$USER_HOME/Downloads/Android-Studio-Versions/avd" "$USER_HOME/.android/"

# Clean up unused resources
rm -rf "$USER_HOME/Downloads/Android-Studio-Versions"
