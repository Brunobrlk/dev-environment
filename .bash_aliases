# .bash_aliases - Custom Bash Aliases
# Author: Bruno Guimarães
# GitHub: https://github.com/Brunobrlk

# Notes:
# ch - Change
# ivm - Init Virtual Machine
# dk - Docker

# Navigating up. Ex: ..3 => Three directories up
alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'


# Edit Files
alias chbash='lvim ~/.bashrc'
alias chalias='lvim ~/.bash_aliases'
alias chenv='lvim ~/.bash_env_vars'

# Docker
alias dk='docker'
alias dkrun='docker run'
alias dkexec='docker exec -it'
alias dklog='docker logs'
alias dkps='docker ps'
alias dkpsa='docker ps -a'

alias dkrm='docker rm'
alias dkrmall='docker rm $(docker ps -a -q)'

alias dkstop='docker stop'
alias dkstopall='docker stop $(docker ps -a -q)'

alias dkimg='docker image'
alias dkimgs='docker images'
alias dkrmimg='docker rmi'
alias dkrmimgs='docker rmi $(docker images --quiet --filter "dangling=true")'

alias dkvol='docker volume'
alias dkvols='docker volume ls'
alias dkrmvol='docker volume rm'
alias dkrmvols='docker volume rm $(docker volume ls -q)'

alias compose='docker-compose'
alias dkup='docker-compose up'
alias dkdown='docker-compose down'

alias udknextcloud='docker-compose -f ~/.utils/DockerContainers/nextcloud.yml up -d'
alias ddknextcloud='docker-compose -f ~/.utils/DockerContainers/nextcloud.yml down'
alias udknginx='docker-compose -f ~/.utils/DockerContainers/nginx.yml up -d'
alias ddknginx='docker-compose -f ~/.utils/DockerContainers/nginx.yml down'
alias udkmysql='docker-compose -f ~/.utils/DockerContainers/mysql.yml up -d'
alias ddkmysql='docker-compose -f ~/.utils/DockerContainers/mysql.yml down'
alias udkpostgres='docker-compose -f ~/.utils/DockerContainers/postgres.yml up -d'
alias ddkpostgres='docker-compose -f ~/.utils/DockerContainers/postgres.yml down'
alias udkjenkins='docker-compose -f ~/.utils/DockerContainers/jenkins.yml up -d'
alias ddkjenkins='docker-compose -f ~/.utils/DockerContainers/jenkins.yml down'
alias udkcircleci='cd ~/.utils/DockerContainers && ./setup_circleci && docker-compose --env-file circleci_env -f circleci.yml run circleci bash'
alias ddkcircleci='docker-compose -f ~/.utils/DockerContainers/circleci.yml down'

# Showing system information
alias basedon='cat /etc/upstream-release/lsb-release'
alias sysinfo='inxi -v 8'
alias duh='du -ha --max-depth=1 | sort -rh'

# Networking
alias ipinfo='curl ipinfo.io && echo && echo "Local IP: $(hostname -I)"'
alias ports='netstat -tulanp'
alias wports='watch -n 1 netstat -tulanp'

# Python Virtual Environment
alias pyapp='python app.py'
alias pyvenv='[ -d venv ] && { read -p "A virtual environment already exists. Do you want to recreate it? (y/n): " -n 1 -r && echo ""; [[ $REPLY =~ ^[Yy]$ ]] && rm -rf venv; } || python -m venv venv'
alias pyon='source venv/bin/activate'
alias pyoff='deactivate'
alias imsrv='cdpy && cd TestingLocalServers && python localmachine.py'
alias ilsrv='cdpy && cd TestingLocalServers && python localhost.py'

# Virtual Machines
alias ivmwin11test='virsh start windows11testing; virt-manager --connect qemu:///system --show-domain-console windows11testing'
alias ivmwin11='virsh start windows11; virt-manager --connect qemu:///system --show-domain-console windows11'
alias ivmmint21='virsh start mint21-3; virt-manager --connect qemu:///system --show-domain-console mint21-3'
alias ivmpopos22='virsh start popos22-04; virt-manager --connect qemu:///system --show-domain-console popos22-04'
alias ivmubuntu='virsh start ubuntu24-04; virt-manager --connect qemu:///system --show-domain-console ubuntu24-04'
alias ivmlubuntu='virsh start lubuntu24-04; virt-manager --connect qemu:///system --show-domain-console lubuntu24-04'
alias ivmserver='virsh start ubuntuserver24-04; virt-manager --connect qemu:///system --show-domain-console ubuntuserver24-04'
alias ivmserver2='virsh start ubuntu2server24-04; virt-manager --connect qemu:///system --show-domain-console ubuntu2server24-04'

# Terminal Translator
alias pt='trans :pt'
alias en='trans'

# Utils
alias cdmobile='cd ~/Development/Mobile/Android-Native/ClassicViews'
alias cdnative='cd ~/Development/Mobile/Android-Native/ClassicViews'
alias cdcompose='cd ~/Development/Mobile/Android-Native/JetpackCompose'
alias cdpy='cd ~/Development/Python'
alias cdpro='cd ~/Development/Projects/'
alias cdbash='cd ~/Development/BashScripts/'
alias cdasconf='cd ~/.config/Google/AndroidStudio2024.2'
alias cdmain='cd "app/src/main/java/$(if [ -f app/build.gradle ]; then sed -n "s/applicationId[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle; else sed -n "s/applicationId[[:space:]]=[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle.kts; fi | sed -e "s/\./\//g" | sed -e "s/^[[:space:]]*//")"'
alias cdres='cd app/src/main/res'

alias lsapt='ls /etc/apt/sources.list.d'
alias rm='trash-put'
alias mkdirs='mkdir -p'
alias src='source ~/.bashrc'
alias vim='lvim'
alias bat='batcat'
alias whatapp='xprop | grep WM_CLASS'
alias apti='sudo apt install -y'
alias aptu='sudo apt update'
alias aptdu='sudo apt dist-upgrade -y'
alias yt='yt-dlp -f "bv+ba/b" -P "$HOME/Videos"'
alias screenlight='xrandr --output HDMI-0 --brightness'

md(){
  pandoc $1 > /tmp/$1.html
  xdg-open /tmp/$1.html
}

cpbuff(){
  cat $1 | xclip -selection clipboard
}

# Android Development
alias gw='./gradlew'
alias gwrun='gw=./gradlew && $gw assembleDebug && $gw installDebug && pkg="com.example.$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" && adb shell am start -W "$pkg/$pkg.MainActivity" && logcat --pid=$(adb shell pidof $pkg)'
alias logcat='adb logcat'
alias devices='adb devices'
alias avd24='emulator -avd API-24_Android-7_Pixel-2_1080x1920-xxhdpi &'
alias avd25='emulator -avd API-25_Android-7.1.1_Pixel-4_1080x2280-xxhdpi &'
alias avd26='emulator -avd API-26_Android-8_Pixel-6a_1080x2400-xxhdpi &'
alias avd27='emulator -avd API-27_Android-8.1_Pixel-7_1080x2400-xxhdpi &'
alias avd28='emulator -avd API-28_Android-9_Pixel-8_1080x2400-xxhdpi &'
alias avd29='emulator -avd API-29_Android-10_Pixel-8a_1080x2400-xxhdpi &'
alias avd30='emulator -avd API-30_Android-11_Pixel-9_1080x2424_xxhdpi &'
alias avd31='emulator -avd API-31_Android-12_Pixel-7a_1080x2400-xxhdpi &'
alias avd32='emulator -avd API-32_Android-12L_Pixel-8-Pro_1344x2992-xxhdpi &'
alias avd33='emulator -avd API-33_Android-13_Small-Phone_720x1280-xhdpi &'
alias avd34='emulator -avd API-34_Android-14_Pixel-7-Pro_1440x3120-xxxhdpi &'
alias avd35='emulator -avd API-35_Android-15_Pixel-9-Pro_1280x2856-xxhdpi &'

alias adblsperm='adb shell pm list permissions -d -g'
alias adbprint='adb emu screenrecord screenshot'

alias cllock='rm ~/.android/avd/*.avd/*.lock'

adbaperm(){
  if [ "$#" -eq 0 ] || [ "$#" -gt 2 ]; then
    echo "Incorrect number of arguments"
    return 1
  fi

  if [ "$#" -eq 1 ]; then
    if [ -f "app/build.gradle.kts" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]=[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle.kts | sed -e "s/^[[:space:]]*//")
    elif [ -f "app/build.gradle" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle | sed -e "s/^[[:space:]]*//")
    else
      echo "You should provide the package name or run this command in the root of your project"
      return 1
    fi
    local perm="$1"
    shift
  fi

  if [ "$#" -eq 2 ]; then
    local pkg="$1"
    local perm="$2"
    shift 2
  fi
  adb shell pm grant $pkg $perm
}
adbrperm(){
  if [ "$#" -eq 0 ] || [ "$#" -gt 2 ]; then
    echo "Incorrect number of arguments"
    return 1
  fi

  if [ "$#" -eq 1 ]; then
    if [ -f "app/build.gradle.kts" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]=[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle.kts | sed -e "s/^[[:space:]]*//")
    elif [ -f "app/build.gradle" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle | sed -e "s/^[[:space:]]*//")
    else
      echo "You should provide the package name or run this command in the root of your project"
      return 1
    fi
    local perm="$1"
    shift
  fi

  if [ "$#" -eq 2 ]; then
    local pkg="$1"
    local perm="$2"
    shift 2
  fi
  adb shell pm revoke $pkg $perm
}
adbidallperm(){
  local APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
  if [ -f "$APK_PATH" ]; then
    adb shell install -g $APK_PATH
  else
    echo "Please. Navigate to the root of your project first"
  fi
}
adbirallperm(){
  local APK_PATH="app/build/outputs/apk/release/app-release.apk"
  if [ -f "$APK_PATH" ]; then
    adb shell install -g $APK_PATH
  else
    echo "Please. Navigate to the root of your project first"
  fi
}
adbclsperm(){
  if [ "$#" -eq 0 ] || [ "$#" -gt 2 ]; then
    echo "Incorrect number of arguments"
    return 1
  fi

  if [ "$#" -eq 1 ]; then
    if [ -f "app/build.gradle.kts" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]=[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle.kts | sed -e "s/^[[:space:]]*//")
    elif [ -f "app/build.gradle" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle | sed -e "s/^[[:space:]]*//")
    else
      echo "You should provide the package name or run this command in the root of your project"
      return 1
    fi
    local perm="$1"
    shift
  fi

  if [ "$#" -eq 2 ]; then
    local pkg="$1"
    local perm="$2"
    shift 2
  fi
  adb shell pm clear-permission-flags $pkg $perm user-set user-fixed "$@"
}
adbdump(){
  if [ "$#" -eq 0 ]; then
    if [ -f "app/build.gradle.kts" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]=[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle.kts | sed -e "s/^[[:space:]]*//")
    elif [ -f "app/build.gradle" ]; then
      local pkg=$(sed -n "s/applicationId[[:space:]]*\"\\([^\"]*\\)\"/\\1/p" app/build.gradle | sed -e "s/^[[:space:]]*//")
    else
      echo "You should provide the package name or run this command in the root of your project"
      return 1
    fi
  else
    local pkg="$1"
  fi
  adb shell dumpsys package $pkg
}
