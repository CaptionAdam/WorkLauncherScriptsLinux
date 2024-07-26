#!/bin/bash

#Each Menu Option Takes 50 Hieght 100 For Top and -50 to hide exit option

while true; do
choice="$(zenity --width=300 --height=450 --list --column "Main" --title="WorkShit" \
"All Enders" \
"Ender3-Ke #1" \
"Ender3-Ke #2" \
"Ender3-Ke #3" \
"Ender3-Ke #4" \
"Ender3-Ke #5" \
"Ender3-Ke #6" \
"LaserCutter" \
"OMW(Server)" \
"Router" \
"SSH Launcher" \
"Mount ShopServer" \
"Unmount ShopServer" \
"edit")"

case "${choice}" in
    "All Enders")
    xdg-open http://ender3-1:4409
    xdg-open http://ender3-2:4409
    xdg-open http://ender3-3:4409
    xdg-open http://ender3-4:4409
    xdg-open http://ender3-5:4409
    xdg-open http://ender3-6:4409
    ;;
    "Ender3-Ke #1")
    xdg-open http://ender3-1:4409
    ;;
    "Ender3-Ke #2")
    xdg-open http://ender3-2:4409
    ;;
    "Ender3-Ke #3")
    xdg-open http://ender3-3:4409
    ;;
    "Ender3-Ke #4")
    xdg-open http://ender3-4:4409
    ;;
    "Ender3-Ke #5")
    xdg-open http://ender3-5:4409
    ;;
    "Ender3-Ke #6")
    xdg-open http://ender3-6:4409
    ;;
    "OMW(Server)")
    xdg-open http://rctshoppi1
    ;;
    "LaserCutter")
    xdg-open http://laserpi
    ;;
    "Mount ShopServer")
    mount /mnt/ShopServer/
    ;;
    "Unmount ShopServer")
    umount /mnt/ShopServer/
    ;;
    "SSH Launcher" )
        while true; do
        choice2="$(zenity --width=300 --height=400 --list --column "SSH" --title="WorkLauncherUlility" \
        "Ender3-Ke #1 SSH(PW: Creality2023)" \
        "Ender3-Ke #2 SSH(PW: Creality2023)" \
        "Ender3-Ke #3 SSH(PW: Creality2023)" \
        "Ender3-Ke #4 SSH(PW: Creality2023)" \
        "Ender3-Ke #5 SSH(PW: Creality2023)" \
        "Ender3-Ke #6 SSH(PW: Creality2023)" \
        "OMV(Server) SSH(PW: RCT2024)" \
	"LaserCutter SSH(PW:RCT2024)")" 

        case "${choice2}" in
            "Ender3-Ke #1 SSH(PW: Creality2023)")
            echo password: Creality2023
            exo-open --launch TerminalEmulator ssh root@ender3-1
            ;;
            "Ender3-Ke #2 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-2
            ;;
            "Ender3-Ke #3 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-3
            ;;
            "Ender3-Ke #4 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-4
            ;;
            "Ender3-Ke #5 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-5
            ;;
            "Ender3-Ke #6 SSH(PW: Creality2023)")
            exo-open --launch TerminalEmulator ssh root@ender3-6
            ;;
            "OMV(Server) SSH")
            exo-open --launch TerminalEmulator ssh root@rctshoppi1
            ;;
	    "LaserCutter SSH")
	    exo-open --launch TerminalEmulator ssh LaserPi@laserpi
	    ;;
            *)
            break
            ;;
            esac
            done
    ;;
    "edit")
    mousepad /home/adam/.local/LauncherScripts/WebLauncher.sh
    ;;
    *)
    break
    ;;
    esac
    done