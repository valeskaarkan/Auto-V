
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
e="echo"
banner()
{

$e "       Wellcome To My Tools\n"$W

}

input()
{

#InputData
echo $cyan"       Contoh"$white:"$green" http://site.com/2019/01/16/post.html"$red
read -p "       Input URL : " link
echo
echo $cyan"       Masukan Jumlah Pengunjung"$red
read -p "       Jumlah    : " count

#URL_Autovisitor
url=$(curl -s -X POST 'https://javaghost.net/ini/visitor.php?' -d 'dav_site='${link}'&razin_jml='${count}'&submit=Visit' | grep "<tr><br><a><font color='#fff'>" | cut -d ":" -f2)

}

loop()
{

#Loop
$e
for i in $url
do

	echo $cyan" IP Pengunjung"$white :"$red"$i"$ungu" ⋙ "$green"Done!"
	sleep 1s #Biar aman hehe

done
}

banner
input
loop
