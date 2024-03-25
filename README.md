# dev-environment
## Features
#### Development Environment Folder Structure (Only development related)
```
home/
    .bash_aliases
    .tmux.conf
    .alacritty.toml
    .config/lvim/config.lua
    .local/bin/shell-scripts/
    .themes/
        Adapta-Nokto/
        Alacritty/
    .utils/
        Commands/
        APKs/
        BoilerplateCode/
    Desktop/
        AndroidStudioVersions.desktop
    Android/
        Sdk/
        AndroidStudioVersions/
    Development/
        BashScripts/
        C/
        C++/
        Dart/
        Gradle/
        Java/
        Kotlin/
        Mobile/
        Projects/
        Python/
        SQLite/
    Documents/
    Downloads/
        OS-ISOs/
        Softwares/
    Pictures/
        #Icons/
        #Images/
        #Logos/
        #Gifs/
        Wallpapers/
```
<a id="softwares"></a>
#### Softwares
Name | Description | Code
--- | --- | ---
shell-scripts | Scripts for daily usage and automation | #1
asdf | Command-line interface for managing versions of different packages. | #2
LunarVim | An IDE layer for Neovim with sane defaults. Completely free and community driven. | #3
tmux | Terminal multiplexer | #4
PCSX2 | A free and open-source PlayStation 2 (PS2) emulator | #5
jstest-gtk | Joystick testing and configuration tool | #6
transmission | Bittorrent client | #7
translate-shell | Shell translator | #8
Google Chrome | Web browser from google | #9
Firefox | A free and open source web browser from Mozilla foundation | #10
Brave | A free and open-source web browser developed by Brave Software | #11
Discord | An instant messaging and VoIP social platform | #12
Skype | A proprietary telecommunications application operated by Skype Technologies | #13
Gimp | A free and open-source raster graphics editor used for image manipulation and image editing | #14
Libreoffice | A free and open-source office productivity software suite | #15
guvcview | A simple GTK+ interface for capturing and viewing video from devices supported by the Linux UVC driver. | #16
Kdenlive | A powerful free and open source cross-platform video editing program | #17
obs-studio | A free and open-source, cross-platform screencasting and streaming app. | #18
shotcut | A free and open-source, cross-platform video, audio, and image editing program | #19
VLC | A free and open-source, portable, cross-platform media player software | #20
Anydesk | A remote desktop application | #21
TeamViewer | A German remote access and remote control computer software | #22
Virt Manager | A desktop virtual machine monitor | #23
Dbeaver | A SQL client software application and a database administration tool | #24
Insomnia | API Client for REST, GraphQL, GRPC and OpenAPI design tool for developers. | #25
Postman | Postman is an API platform for building and using APIs. | #26
Genymotion | A PaaS Android Operating System. | #27
VsCode | A source-code editor  | #28
Android Studio | The official integrated development environment for Google's Android operating system | #29

#### Graphical User Interface Related
- Adapta-Nokto theme
- Nerd Fonts


## 2- Installation and Usage
#### 0- Extenal HD Folder Structure in order to make the script work correctly
For example the script would copy your downloads folder from: /media/userame/$HD_NAME/Backup/Downloads
```
Backup/
    Android/
    Keys/
    Development/
    Documents/
    Downloads/
    Pictures/
        Wallpapers/
```
#### 1- Clone the repository
```
    git clone --recursive https://github.com/Brunobrlk/dev-environment.git
```
#### 2- Go to the repository and execute the script passing the HD Name using the flag --hd-name="HD_NAME"
```
    cd path_to_repo/dev-environment
```
```
    bash dev_environment_setup --hd-name="Bruno"
```
You can also use **chmod +x** dev_environment_setup and then execute just running **./dev_environment_setup**

#### Setting up background
Place your image inside **Backup/Pictures/Wallpapers/image_file** and when executing the script run with --background="image_file" (it has to be in Backup/Pictures/Wallpapers) just pass its name.

Structure example and its respective command:
```
Backup/
    Pictures/
        Wallpapers/
            SaoBackgroundFHD.png
```
```
bash dev_environment_setup --hd-name="Bruno" --background="SaoBackgroundFHD.png"
```

#### Adding more softwares to download via apt
Make sure that the package exist and to pass the correct name otherwise it won't work.

To add more softwares you can either fork this project and change the script just adding **apti <software_name>**
Or you can also create a file inside Backup called **softwares.txt** and add the software name in each line. The program will read this file if it exists. 
Example:

Backup/softwares.txt
```
spotify
mysql-server
krita
blender
```

Or use the flag **--add-softwares="pkg1 pkg2 pkg3"** passing the packages separated by space.

Example:
```
bash dev_environment_setup --hd-name="Bruno" --add-softwares="spotify mysql-server krita blender"
```

#### Ignoring default packages
If you don't use some of the default packages listed in Softwares section. You can ignore all by setting the **--ignore-all** flag or create a file called **ignore.txt** inside Backup(Similar to softwares.txt).
Example:

Ignoring all:
```
bash dev_environment_setup --hd-name="Bruno" --ignore-all
```

Ignoring only the ones listed in Backup/ignore.txt passing its code(See [Softwares](#softwares) section):

Backup/ignore.txt
```
#3
#6
#10
#12
#13
```

Or use the flag **--ignore="#1 #2 #4"** passing the codes separated by space

Example:
```
bash dev_environment_setup --hd-name="Bruno" --ignore="#3 #6 #10 #12 #13"
```
