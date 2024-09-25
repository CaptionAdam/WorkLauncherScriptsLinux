#!/bin/bash
# Script to create menus and take action according to that selected menu item.

# SSHMenu
FontMenu () {
    while :
        do
        clear
        echo "         __________________________ "
        echo "        |           Font           |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        | 1)  -  Open Font Folder  |"
        echo "        | 2)  -  Reload Font Cache |"
        echo "        |__________________________|"
        echo "        |           MENU           |"
        echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        echo "        | m)  -  Main Menu         |"
        echo "        | q)  -  QUIT              |"
        echo "        '--------------------------'"
        echo ""
        echo -n "Enter your menu choice:"
        read yourch
        case $yourch in
        1) thunar /usr/local/share/fonts/
            sleep .5 #wait for 1/2 seconds
        ;;
        2) fc-cache
            sleep 0.5 #wait 1 second
            clear
            echo "         __________________________ "
            echo "        |           Font           |"
            #echo "       ______________________________ "
            #echo "      |\>\>\>\>\>\>\>\/</</</</</</</|"
            #echo "      |<\<\<\<\<CACHE RELOADED>/>/>/>|"
            #echo "      |\>\>\>\>\>\>\>\/</</</</</</</|"
            #echo "       ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾ "
            echo "       ______________________________ "
            echo "      |\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ |"
            echo "      |/ / / / /CACHE RELOADED / / / |"
            echo "      |\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ |"
            echo "       ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾ "
            #echo "        |           MENU           |"
            echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
            echo "        | X)  -  XXXX XXXX         |"
            echo "        | X)  -  XXXX              |"
            echo "        '--------------------------'"
            echo ""
            read -p "Continue(Yes[y]) or Exit(No[n])" choice

            # giving choices there tasks using
            case $choice in
            [yY]* ) return ;;
            [nN]* ) exit 0 ;;
            *) exit ;;
            esac
        ;;
        m) return
        ;;
        q) clear
            exit 0 
        ;;
        *) echo "Opps!!! Please Try Again"
        echo "Press a key. . ."
        read -n 1
        ;;
    esac
  done
}


while :
  do
  clear
  echo "         ________________________ "
  echo "        |       Nait Stuff       |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | n)  -  Nait Main Site  |"
  echo "        | b)  -  Bright Space    |"
  echo "        | s)  -  Student Portal  |"
  echo "        | S)  -  Self Serve      |"
  echo "        |________________________|"
  echo "        |       Other Shit       |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | g)  -  OnlineGDB       |"
  echo "        | a)  -  App Folder      |"
  echo "        | f)  -  Font Menu       |"
  echo "        |________________________|"
  echo "        |          MENU          |"
  echo "        |‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
  echo "        | e)  -  Edit            |"
  echo "        | q)  -  QUIT            |"
  echo "        '------------------------'"
  echo ""
  echo -n "Enter your menu choice:"
  read yourch
  case $yourch in
    n) xdg-open https://www.nait.ca
        sleep 1 #sleep for 1 second
        exit 0 
    ;; 
    b) xdg-open https://lms.nait.ca/
        sleep 1 #sleep for 1 second
        exit 0 
    ;;
    s) xdg-open https://my.nait.ca/
        sleep 1 #sleep for 1 second
        exit 0
    ;;
    S) xdg-open https://cs-ss.ps.nait.ca/psc/ps/EMPLOYEE/SA/c/NUI_FRAMEWORK.PT_LANDINGPAGE.GBL?
        sleep 1 #sleep for 1 second
        exit 0
    ;;
    a) thunar /home/adam/.local/share/applications/
        sleep .5 #sleep for 1/2 seconds
        exit 0
    ;;
    g) xdg-open https://www.onlinegdb.com
        sleep 1 #sleep for 1 second
        exit 0
    ;;
    f) FontMenu
    ;;
    e) codium /home/adam/.local/LauncherScripts/LazyLauncher.sh
        sleep .5 #sleep for 1/2 seconds
        exit 0
    ;;
    q) clear
        exit 0 
    ;;
    *) echo "Opps!!! Please Try Again"
       echo "Press a key. . ."
       read -n 1
    ;;
  esac
done