# Script to create menus and take action according to that selected menu item.
#
#
while :
  do
  clear
  echo "........................................................"
  echo ":   ENTER # TO LAUNCH SELECTED PRINTER WEB INTERFACE   :"
  echo ":     OR LAUNCH SELECTED WEB INTERFACE FOR UTILITY     :"
  echo ":......................................................:"
  echo "              ........................."
  echo "              :-------Printers--------:"
  echo "              : a  - All Printers     :"
  echo "              : 1  - #1 Ender 3 V3 KE :"
  echo "              : 2  - #2 Ender 3 V3 KE :"
  echo "              : 3  - #3 Ender 3 V3 KE :"
  echo "              : 4  - #4 Ender 3 V3 KE :"
  echo "              : 5  - #5 Ender 3 V3 KE :"
  echo "              : 6  - #6 Ender 3 V3 KE :"
  echo "              :------Other Shit-------:"
  echo "              : l  - Laser Control    :"
  echo "              : o  - OMV              :"
  echo "              :--------Options--------:"
  echo "              : s  - SSH Launcher     :"
  #echo "              : c  - CMD List         :"
  echo "              : q  - EXIT             :"
  echo "              :.......................:"
  echo -n "Enter your menu choice:"
  read yourch
  case $yourch in
    a) xdg-open http://ender3-1:4409
        xdg-open http://ender3-2:4409
        xdg-open http://ender3-3:4409
        xdg-open http://ender3-4:4409
        xdg-open http://ender3-5:4409
        xdg-open http://ender3-6:4409
        ;;
    1) xdg-open http://ender3-1:4409
    ;;
    2) xdg-open http://ender3-2:4409
    ;;
    3) xdg-open http://ender3-3:4409
    ;;
    4) xdg-open http://ender3-4:4409
    ;;
    5) xdg-open http://ender3-5:4409
    ;;
    6) xdg-open http://ender3-6:4409
    ;;
    l) xdg-open http://laserpi
    ;;
    o) xdg-open http://rctshoppi1
    ;;
    s) clear
        sh ./SSHLauncher.sh
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