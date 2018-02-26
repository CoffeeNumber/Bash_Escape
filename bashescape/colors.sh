# Toni Kivelä
# 1406779
# Bash Escape Room
#!/bin/bash
clear

echo "Colors: "
for i in {0..256} ; do echo -en "\e[1;48;5;${i}m $i \e[0m" ; done ; echo

