# Bash_Escape
Escape room game made with Bash Script.

You will need a website to see scores in top10 list or you can replace from score.sh:
line 25: echo $savescore > $HOME/public_html/index.html
to
line 25: echo $savescore > top10.txt

and then you can add new function in main.sh file:
top(){
  clear
  echo top10.txt
}

and add inside read_options:
4) top ;;
5) echo -e "{$NORMAL}" && clear && exit 0 ;;

then you can see top10 list inside the game also.

Known bugs:
* when winning the game, it will return to main menu (as it should), but then if you exit game, you will return back to previous game room view.
