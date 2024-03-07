#!/bin/bash

#Adicionar depois: pgadmin4, IntelliJ

a=("        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        " "        ")
response=1000
if [[ $1 == "help" ]]; then
    echo "TODO: Menu help"
elif [[ $1 == "install" ]]; then
    if [ $2 ]; then
        echo "TODO: install"
    else
        echo "You need to pass the program id"
    fi
elif [[ $1 == "remove" ]]; then
    echo "TODO: remove"
elif [[ !$1 ]]; then
    while (( $response != 0 )) && (( $response != 100 )); do
        echo "====================================================================================================="
        echo -e "=== [1] Mozila Firefox ${a[0]}              === [21] ASDF ${a[20]}                               ==="
        echo -e "=== [2] Google Chrome ${a[1]}               === [22] Terminal Translator ${a[21]}                ==="
        echo -e "=== [3] Brave ${a[2]}                       === [23] Todoist ${a[22]}                            ==="
        echo -e "=== [4] Discord ${a[3]}                     === [24] Tmux ${a[23]}                               ==="
        echo -e "=== [5] Spotify ${a[4]}                     === [25] Kotlin(ASDF) ${a[24]}                       ==="
        echo -e "=== [6] Blender ${a[5]}                     === [26] NodeJS(ASDF) ${a[25]}                       ==="
        echo -e "=== [7] Krita ${a[6]}                       === [27] NPM ${a[26]}                                ==="
        echo -e "=== [8] Gimp ${a[7]}                        === [28]                                             ==="
        echo -e "=== [9] LibreOffice ${a[8]}                 === [29]                                             ==="
        echo -e "=== [10] Guvcview(WebCam) ${a[9]}           === [30]                                             ==="
        echo -e "=== [11] Android Studio ${a[10]}             === [31]                                             ==="
        echo -e "=== [12] VsCode ${a[11]}                     === [32]                                             ==="
        echo -e "=== [13] Flutter Toolkit ${a[12]}            === [33]                                             ==="
        echo -e "=== [14] MySQL Workbench ${a[13]}            === [34]                                             ==="
        echo -e "=== [15] MySQL ${a[14]}                      === [35]                                             ==="
        echo -e "=== [16] Postgres ${a[15]}                   === [36] BitTorrent ${a[35]}                         ==="
        echo -e "=== [17] MongoDB ${a[16]}                    === [37] Steam ${a[36]}                              ==="
        echo -e "=== [18] Docker ${a[17]}                     === [38] Wine+Lutris ${a[37]}                        ==="
        echo -e "=== [19] Postman ${a[18]}                    === [39] PCSX2 Emulator ${a[38]}                     ==="
        echo -e "=== [20] VirtualBox ${a[19]}                 === [40] jstest-gtk(Control Calibrator) ${a[39]}     ==="
        echo "====================================================================================================="
        echo "=== [1-40] To mark/desmark                   [0] Quit                       [100] Install markeds ==="
        echo "====================================================================================================="
        read response
        if [[ ${a[$response-1]} != "\033[1;33m(marked)\033[1;37m" ]]; then
            a[$response-1]="\033[1;33m(marked)\033[1;37m"
            echo ${a[$response-1]}
        else
            a[$response-1]="        "
            echo ${a[$response-1]}
        fi
    clear
    done
    echo "Finished"
else
    echo "You typed something wrong"
fi


