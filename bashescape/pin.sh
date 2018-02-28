# Toni Kivelä
# 1406779
# Bash Escape Room
#!/bin/bash


pin_menu() {
clear
echo "  ___________________"
echo " /                 \ \  " 
echo "'  BASH ESCAPE (c)  ' '"
echo "| .---------------. | |"
echo "| |               | | |"
echo "| |  __ __ __ __  | | |"
echo "| '---------------' | |"
echo "| .---. .---. .---. | |"
echo "| | 1 | | 2 | | 3 | | |"
echo "| '---' '---' '---' | |"
echo "| .---. .---. .---. | |"
echo "| | 4 | | 5 | | 6 | | |"
echo "| '---' '---' '---' | |"
echo "| .---. .---. .---. | |"
echo "| | 7 | | 8 | | 9 | | |"
echo "| '---' '---' '---' | |"
echo "| .---. .---. .---. | |"
echo "| | * | | 0 | | # | | |"
echo "| '---' '---' '---' | |"
echo ".  This is not ATM  . ."
echo " \_________________/_/"
echo " "
}
 
read_options() {
	local choice
	read -p "Enter 4 digit pincode or [ 6 ] to exit >> " choice
	case $choice in
		6891) win ;;
		6) echo -e "{$NORMAL}" && clear && exit 0 ;;
		*) echo -e "${ERROR}Your pin code was incorrect..." && sleep 1
	esac
}

#.----------.
#  Functions
#'----------'

win(){
	sh ./win.sh
	sh ./main.sh
	echo -e "{$NORMAL}" && clear && exit 0
}
 
#.----------------------.
#  Infinity loop => MAIN
#'----------------------'
while true
do
	pin_menu
	read_options
	if [ "$choice" -eq 6 ]
	then
		break
	fi

done