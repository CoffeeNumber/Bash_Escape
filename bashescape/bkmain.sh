# Toni Kivelä
# 1406779
# Bash Escape Room
#!/bin/bash

# variables
WHITE='\033[0;107;30m'
NORMAL='\033[0;0;39m'
GREEN='\033[0;107;32m'
RED='\033[0;107;31m'
BLUE='\033[0;107;34m'
ERROR='\033[0;41;30m'
WHITEBACK='\033[0;107;30m'

#.----------------------------.
#  function to show the menu
#'----------------------------'

clear
echo -e "${WHITEBACK}"
clear
echo -e "${WHITEBACK}"
echo ".----------------.                .------------------------------."
echo -e "| .------------. |                |${WHITE} WELCOME TO BASH ESCAPE ROOM! ${WHITEBACK}|"
echo -e "| | BASH ESCAPE| |                |${WHITE}                              ${WHITEBACK}|"
echo "| '------------' |                '-//---------------------------'"
echo "|   ---------    |                 .-----."
echo -e "|   |       |    |                | ${RED}O   O${WHITEBACK} |"
echo "|   |       |    |                |  (oo) |"
echo "|   | o     |    |                '| v-v |'"
echo "|   |       |    |                  '---'"
echo "|   |       |    |                   | |"
echo "|   |       |    |                   | |"
echo "'----------------'                   | |" && sleep 2

clear
echo -e "${WHITEBACK}"
echo ".----------------.                .------------------------------."
echo -e "| .------------. |                |${WHITE} DID YOU KNOW THAT WEIGHT OF A${WHITEBACK}|"
echo -e "| | BASH ESCAPE| |                |${WHITE} FLY IS TYPICALLY ABOUT 12MG? ${WHITEBACK}|"
echo "| '------------' |                '-//---------------------------'"
echo "|   ---------    |                 .-----."
echo -e "|   |       |    |                | ${GREEN}O   O${WHITEBACK} |"
echo "|   |       |    |                |  (oo) |"
echo "|   | o     |    |                '| v-v |'"
echo "|   |       |    |                  '---'"
echo "|   |       |    |                   | |"
echo "|   |       |    |                   | |"
echo "'----------------'                   | |" && sleep 2

mainmenu(){
clear
echo -e "${WHITEBACK}"
echo ".----------------.                .------------------------------."
echo -e "| .------------. |                |${WHITE} GAME MENU:                   ${WHITEBACK}|"
echo -e "| | BASH ESCAPE| |                |${WHITE} 1. START GAME                ${WHITEBACK}|"
echo -e "| '------------' |                |${WHITE} 2. TUTORIAL                  ${WHITEBACK}|"
echo -e "|   ---------    |                |${WHITE} 3. CREDITS                   ${WHITEBACK}|"
echo -e "|   |       |    |                |${WHITE} 4. EXIT GAME                 ${WHITEBACK}|"
echo "|   |       |    |                '-//---------------------------'" 
echo "|   | o     |    |                 .-----."  
echo -e "|   |       |    |                | ${BLUE}O   O${WHITEBACK} |"
echo "|   |       |    |                |  (oo) |"
echo "|   |       |    |                '| v-v |'"  
echo "'----------------'                 '-----'" && sleep 2

}

read_options() {
	local choice
	read -p "Please, pick your number [ 1 - 4] >> " choice
	case $choice in
		1) room ;;
		2) tutorial ;;
		3) credits ;;
		4) echo -e "{$NORMAL}" && clear && exit 0 ;;
		*) echo -e "${ERROR}Error..." && sleep 2
	esac
}
#.----------.
#  Functions
#'----------'
pause(){
  read -p "Press [Enter] to continue..." fackEnterKey
}

room(){
	sh ./room.sh
		pause
}

tutorial(){
	sh ./gameplay.sh
		pause
}

credits() {
	sh ./credits.sh
		pause
}

#.----------------------.
#  Infinity loop => MAIN
#'----------------------'
while true
do
	mainmenu
	read_options
done
