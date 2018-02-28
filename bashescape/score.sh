# Toni Kivelä 
# 1406779 
# Bash Escape Room
#!/bin/bash

day=$(cat score.txt)

endday=$(date +%s)
endday=$((1000*$endday))

total=`expr $endday - $day`
record=$((1800000-$total))

record=$(($record-10000))

echo Your points were $record
echo Winner name was?
read winner
#laita tiedostoon talteen.
echo $winner $record
echo "$record $winner<br />" >> num.txt
sort -rV num.txt > num2.txt
head -10 num2.txt > num.txt
savescore=$(cat -n num.txt)
echo $savescore > $HOME/public_html/index.html
sleep 4
