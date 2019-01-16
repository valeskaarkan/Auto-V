#!/bin/bash/sh
#copyright@javaghost.me
#nyet:*

clear
#Warna
green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
ungu="\033[35;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"
red="\033[31;1m"

#Banner
e="echo "
banner()
{


}

input()
{

#InputData
echo $cyan"Contoh"$white":"$green" http://www.site.com/2019/01/post.html"
read -p " Masukan URL  : " link
echo
echo $cyan"Jumlah Pengunjung Blogspot"
read -p " Jumlah       : " count

#URL_Autovisitor
url=$(curl -s -X POST 'https://javaghost.net/ini/visitor.php?' -d 'dav_site='${link}'&razin_jml='${count}'&submit=Visit' | grep "<tr><br><a><font color='#fff'>" | cut -d ":" -f2)

}

loop()
{

#Loop
$e
for i in $url
do

	echo $cyan" IP PENGUNJUNG "$white:"$red"$i"$yellow"⋙"$green" Done!"
	sleep 2 #Biar aman hehe

done
}

banner
input
loop
sh visit.sh
