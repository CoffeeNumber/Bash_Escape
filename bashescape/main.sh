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
echo ".-----------------------------------------."
echo "| .-------------------------------------. |"
echo "| |         ____ ____ ____ ____         | |"
echo "| |        ||B |||A |||S |||H ||        | |"
echo "| |        ||__|||__|||__|||__||        | |"
echo "| |        |/__\|/__\|/__\|/__\|        | |"
echo "| |    ____ ____ ____ ____ ____ ____    | |"
echo "| |   ||E |||S |||C |||A |||P |||E ||   | |"
echo "| |   ||__|||__|||__|||__|||__|||__||   | |"
echo "| |   |/__\|/__\|/__\|/__\|/__\|/__\|   | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                ./_),| |"
echo "| |                             -:_) ) )| |"
echo "| |                                '\_)'| |"
echo "| |                                     | |"
echo "| '-------------------------------------' |"
echo "'-----------------------------------------'" && sleep 1

clear
echo ".-----------------------------------------."
echo "| .-------------------------------------. |"
echo "| |         ____ ____ ____ ____         | |"
echo "| |        ||B |||A |||S |||H ||        | |"
echo "| |        ||__|||__|||__|||__||        | |"
echo "| |        |/__\|/__\|/__\|/__\|        | |"
echo "| |    ____ ____ ____ ____ ____ ____    | |"
echo "| |   ||E |||S |||C |||A |||P |||E ||   | |"
echo "| |   ||__|||__|||__|||__|||__|||__||   | |"
echo "| |   |/__\|/__\|/__\|/__\|/__\|/__\|   | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                       ./_),         | |"
echo "| |                    -:_) ) ) bzzzzz  | |"
echo "| |                       '\_)'         | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| '-------------------------------------' |"
echo "'-----------------------------------------'" && sleep 1

clear
echo ".-----------------------------------------."
echo "| .-------------------------------------. |"
echo "| |         ____ ____ ____ ____         | |"
echo "| |        ||B |||A |||S |||H ||        | |"
echo "| |        ||__|||__|||__|||__||        | |"
echo "| |        |/__\|/__\|/__\|/__\|        | |"
echo "| |    ____ ____ ____ ____ ____ ____    | |"
echo "| |   ||E |||S |||C |||A |||P |||E ||   | |"
echo "| |   ||__|||__|||__|||__|||__|||__||   | |"
echo "| |   |/__\|/__\|/__\|/__\|/__\|/__\|   | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |    DID YOU KNOW THAT WEIGHT OF A    | |"
echo "| |    FLY IS TYPICALLY ABOUT 12MG?     | |"
echo "| |                                     | |"
echo "| |              ./_),                  | |"
echo "| |            -:_) ) ) bzzzzz          | |"
echo "| |              '\_)'                  | |"
echo "| |                                     | |"
echo "| '-------------------------------------' |"
echo "'-----------------------------------------'" && sleep 4

mainmenu(){
clear
echo ".-----------------------------------------."
echo "| .-------------------------------------. |"
echo "| |         ____ ____ ____ ____         | |"
echo "| |        ||B |||A |||S |||H ||        | |"
echo "| |        ||__|||__|||__|||__||        | |"
echo "| |        |/__\|/__\|/__\|/__\|        | |"
echo "| |    ____ ____ ____ ____ ____ ____    | |"
echo "| |   ||E |||S |||C |||A |||P |||E ||   | |"
echo "| |   ||__|||__|||__|||__|||__|||__||   | |"
echo "| |   |/__\|/__\|/__\|/__\|/__\|/__\|   | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |            1. START GAME            | |"
echo "| |            2. TUTORIAL              | |"
echo "| |            3. CREDITS               | |"
echo "| |            4. EXIT GAME             | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| |                                     | |"
echo "| '-------------------------------------' |"
echo "'-----------------------------------------'"

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
	echo -e "{$NORMAL}" && clear && exit 0
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
	if [ "$choice" -eq 1 ]
	then
		break		
	fi
done
