# .bash_aliases - Custom Bash Aliases
# Author: Bruno Guimarães
# GitHub: https://github.com/Brunobrlk

# Usage:
#   You are free to use, modify, and distribute this file with proper attribution.
#   If you find it useful, feel free to give credit.

# Version: 1.0
# Date: 2023-12-02

# Notes:
# Some commands only work with a specific folder structure, so you need to adapt them for your personal use.

# Disclaimer:
#   The author is not responsible for any consequences of using these aliases.
#   Use at your own risk.

# Navigating up. Ex: ..3 => Three directories up
alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

# Shortcuts for frequent navigation
alias cdmobile='cd ~/Development/Mobile/Apps-Nativo'
alias cdpy='cd ~/Development/Python'
alias cdgit='cd ~/Development/Github/'

# Creating multiple folder structures. Ex: mkdirs com/example/package
alias mkdirs='mkdir -p'

# Showing system information
alias sysinfo='inxi -v 8'
alias duh='du -h --max-depth=1'

# Networking
alias ipinfo='curl ipinfo.io && echo && echo "Local IP: $(hostname -I)"'
alias ports='netstat -tulanp'

# Android Development
alias gw='./gradlew'
alias gwrun='gw=./gradlew && $gw assembleDebug && $gw installDebug && pkg="com.example.$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" && adb shell am start -n "$pkg/$pkg.MainActivity" && sleep 0.5s && logcat --pid=$(adb shell pidof com.example.androidapis)'
alias logcat='adb logcat'
alias devices='adb devices'
alias em7='emulator -avd Pixel_2_-_Android_7_API_24_Nougat &'
alias em8='emulator -avd Pixel_3_-_Android_8_API_26_Oreo &'
alias em10='emulator -avd PIxel_4_-_Android_10_API_29_Quice_Tart &'
alias em11='emulator -avd Pixel_4_-_Android_11_API_30_Red_Valvet_Cake &'
alias emroot='emulator -avd Nexus_6_API_30_Android_R_Rooted_Device_-_No_Play_Store_ &'
alias cdmain='cd "app/src/main/java/$(sed -n "s/applicationId[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle | sed -e "s/\./\//g" | sed -e "s/^[[:space:]]*//")"'
alias cdres='cd app/src/main/res'

# Watching commands
alias w0='watch -n 0.5'
alias w1='watch -n 1'
alias w2='watch -n 2'

# Utils
alias src='source ~/.bashrc'
alias vim='nvim'
