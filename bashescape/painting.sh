# Toni Kivelä
# 1406779
# Bash Escape Room
#!/bin/bash
clear
echo "Behind the painting there is something..." && sleep 2

cat painting.txt && sleep 4

read_options() {
	local choice
	read -p "Write [ 6 ] and press enter to exit >> " choice
	case $choice in
		6) echo -e "{$NORMAL}" && clear && exit 0 ;;
		*) echo -e "${ERROR}Typo error..." && sleep 1
	esac
}


#.----------------------.
#  Infinity loop => MAIN
#'----------------------'
while true
do
	read_options
	if [ "$choice" -eq 6 ]
	then
		break
	fi
done
