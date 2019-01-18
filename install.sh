#!/bin/bash

green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
ungu="\033[35;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"
red="\033[31;1m"



cd .font
cat font1.txt | lolcat
function ProgressBar {

	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done

	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

printf "\r$white     Loading$white :$red [$green${_done// /#}$ungu${_left// /-}$red]$white ${_progress}%%"

}

_start=5

_end=100

for number in $(seq ${_start} ${_end})
do
	sleep 0.1
	ProgressBar ${number} ${_end}

done
printf " $green  Done!\n"

echo

    pkg install curl -y


    pkg install ruby cowsay toilet figlet -y

clear

cd /data/data/com.termux/files/home/
sh visit.sh
