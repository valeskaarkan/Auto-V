#!/bin/bash/sh
#copyright@javaghost.me
#nyet:*

clear
#Warna
r='\033[31m'
y='\033[33m'
b='\033[34m'
c='\033[36m'
w='\033[0m'

#Banner
e="echo -e"
banner()
{

$e "          /\             "$w
$e "        .'  '.	     "$w
$e "       /======\          "$w
$e "      ;:.  _   ;         "$w
$e " _____|   (_)  |______    "$w
$e "|  "$c"Auto Visitor Blog$w  |"
$e "|    "$c"javaghost.me$w     |"
$e "|____  " $c"./lolz$w  ______|"
$e "    .' \:.    / '.   "$w
$e "   / .-'':._.'--. \   "$w
$e "   |/    /||\    \|   "$w
$e "	(+ '*)	   "$w
$e "	 \,'/	   "$w
$e "	  \/	   \n"$W

}

input()
{

#InputData
read -p "Input URL : " link
read -p "Jumlah	  : " count

#URL_Autovisitor
url=$(curl -s -X POST 'https://javaghost.net/ini/visitor.php?' -d 'dav_site='${link}'&razin_jml='${count}'&submit=Visit' | grep "<tr><br><a><font color='#fff'>" | cut -d ":" -f2)

}

loop()
{

#Loop
$e
for i in $url
do

	echo -e "[$b+$w] visitor dengan IP : $y$i$w sukses berkunjung:*"
	sleep 10s #Biar aman hehe

done
}

banner
input
loop
