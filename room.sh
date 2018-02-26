# Toni Kivelä
# 1406779
# Bash Escape Room
#!/bin/bash

#.-----------.
#  variables
#'-----------'

#8/16 bit colors
WHITEBACK='\033[0;107;30m'
RED='\033[0;101;31m'
#256 bit colors
BROWN='\e[0;48;5;136m'
GREY='\e[0;48;5;245m'
BLUE='\e[0;48;5;69m'
OCEAN='\e[0;48;5;18m'
PURPLE='\e[0;48;5;134m'
PGREY='\e[30;48;5;252m'

#.----------------------------.
#  function to show the menu
#'----------------------------'

room_menu() {
clear
echo -e "            ${PURPLE}.-------------------------------------------.${WHITEBACK}"
echo -e "           ${PURPLE}/|	                   ${BROWN}.-------------.${PURPLE}      | .${WHITEBACK}"
echo -e "          ${PURPLE}/ |	                   ${BROWN}|.-----------.|${PURPLE}      |  .${WHITEBACK}"
echo -e "         ${PURPLE}/  |	                   ${BROWN}||${BLUE}       ${RED}:>${BLUE}  ${BROWN}||${PURPLE}      |   .${WHITEBACK}"
echo -e "        ${PURPLE}/   |	                   ${BROWN}||${BLUE}      ${RED}/|${BLUE}   ${BROWN}||${PURPLE} ${PGREY}.----.${PURPLE}    .${WHITEBACK}"
echo -e "       ${PURPLE}/    |	                   ${BROWN}||${BLUE}     ${RED}/ |${BLUE}   ${BROWN}||${PURPLE} ${PGREY}|\    .${PURPLE}    .${WHITEBACK}"
echo -e "      ${PURPLE}/     |	                   ${BROWN}||${BLUE}    ${RED}/  |${BLUE}   ${BROWN}||${PURPLE} ${PGREY}| \    .${PURPLE}    .${WHITEBACK}"
echo -e "     ${PURPLE}/      |	                   ${BROWN}||${BLUE} ${WHITEBACK}'--------'${BROWN}||${PURPLE} ${PGREY}|  \    .${PURPLE}    .${WHITEBACK}"
echo -e "    ${PURPLE}/       |    _________         ${BROWN}||${BLUE}  ${WHITEBACK}\______/${BLUE} ${BROWN}||${PURPLE} ${PGREY}|   \    .${PURPLE}    .${WHITEBACK}"
echo -e "   ${PURPLE}/        |  ${BROWN}/_/-----/_/|${WHITEBACK}${PURPLE}        ${BROWN}||${OCEAN}~~~~~~~~~~~${BROWN}||${PURPLE} ${PGREY}|    \    .${PURPLE}    .${WHITEBACK}"
echo -e "  ${PURPLE}/         |  ${BROWN}| | o o | ||${WHITEBACK}${PURPLE}        ${BROWN}||${OCEAN}           ${BROWN}||${PURPLE} ${PGREY}|     \    .${PURPLE}    .${WHITEBACK}"
echo -e " ${PURPLE}'          |  ${BROWN}|_| o o |_||${WHITEBACK}${PURPLE}        ${BROWN}|'-----------'|${PURPLE} ${PGREY}|  .   \    .${PURPLE}    '${WHITEBACK}"
echo -e " ${PURPLE}|          |  ${BROWN}/ /=====/ /|${WHITEBACK}${PURPLE}        ${BROWN}'-------------'${PURPLE} ${PGREY}|  |\   \    .${PURPLE}   |${WHITEBACK}"
echo -e " ${PURPLE}|          | ${BROWN}/_//____/_/ |${WHITEBACK}${PURPLE}                        ${PGREY}|  | \   \    .${PURPLE}  |${WHITEBACK}"
echo -e " ${PURPLE}|          |${BROWN}|o|:.....|o| |${WHITEBACK}${PURPLE}________________________${PGREY}|  | |\   \    .${PURPLE} |${WHITEBACK}"
echo -e " ${PURPLE}|          '${BROWN}|_|:_____|_|/U${WHITEBACK}${GREY}                        ${PGREY}.  | | '   '    '${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|         ${GREY}/  ${BROWN}U${GREY}        ${BROWN}U${GREY}                            ${PGREY}. | | |   |    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|        ${GREY}/${RED}//////////////////${WHITEBACK}${GREY}                        ${PGREY}.  | |   |    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|       ${GREY}/${RED}/                /${WHITEBACK}${GREY}                           ${PGREY}.  |   |    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|      ${GREY}/${RED}/                /${WHITEBACK}${GREY}                              ${PGREY}.    |    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|     ${GREY}/${RED}/                /${WHITEBACK}${GREY}                                ${PGREY}.   |    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|    ${GREY}/${RED}/                /${WHITEBACK}${GREY}                                  ${PGREY}.  |    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|   ${GREY}/${RED}/                /${WHITEBACK}${GREY}                                     ${PGREY}.|    |${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}|  ${GREY}/${RED}/                /${WHITEBACK}${GREY}                                      ${PGREY} '----'${PURPLE}|${WHITEBACK}"
echo -e " ${PURPLE}| ${GREY}/${RED}/                /${WHITEBACK}${GREY}                                            .${PURPLE} |${WHITEBACK}"
echo -e " ${PURPLE}|${GREY}/${RED}//////////////////${WHITEBACK}${GREY}                                              .${PURPLE}|${WHITEBACK}"
echo -e " ${GREY}'-----------------------------------------------------------------' ${WHITEBACK}" 
echo ".---------------------------------------------------------------------------."
echo "| .--------. .------. .-----------. .------------. .------------. .-------. |"
echo "| |1) CHAIR| |2) MAT| |3) PAINTING| |4) FIREPLACE| |5) ENTER PIN| |6) QUIT| |"
echo "| '--------' '------' '-----------' '------------' '------------' '-------' |"
echo "'---------------------------------------------------------------------------'"
}

read_options() {
	local choice
	read -p "Please, pick your number [ 1 - 6] >> " choice
	case $choice in
		1) chair ;;
		2) mat ;;
		3) painting ;;
		4) fireplace ;;
		5) enter_pin ;;
		6) echo -e "{$NORMAL}" && clear && exit 0 ;;
		*) echo -e "${ERROR}Typo error..." && sleep 1
	esac
}

#.----------.
#  Functions
#'----------'

chair(){
	sh ./chair.sh
		pause
}

mat(){
	sh ./mat.sh
		pause
}

painting() {
	sh ./painting.sh
		pause
}

fireplace() {
	sh ./fireplace.sh
		pause
}

enter_pin() {
	sh ./pin.sh
}

#.----------------------.
#  Infinity loop => MAIN
#'----------------------'
while true
do
	room_menu
	read_options
	if [ "$choice" -eq 6 ]
	then
		break
	fi
done
