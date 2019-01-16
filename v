green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
ungu="\033[35;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"
red="\033[31;1m"
clear
echo
echo
echo
echo
echo

e="echo"
banner()
{

$e "$yellow   _______ __
$e "$yellow    | $white _  $yellow |  .-----.-----.-----.----."
$e "$yellow    |. $white 1 $yellow |  | $white _ $yellow | $white _ $yellow | $white -$yellow__|   _|"
$e "$yellow    |. $white _  $yellow |__|_____|___  |_____|__|"
$e "$yellow    |: $white 1  $yellow  \       |_____|"
$e "$yellow    |::.. . $yellow /$indigo ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
$e "$yellow     `-------'$indigo  ┃$yellow Author   :$cyan Chemod-77 $indigo                 ┃"
$e "$indigo                      ┃$yellow Team     :$cyan Aceh Cyber Team $indigo           ┃"
$e "$indigo                      ┃$yellow Website  :$cyan www.cyber-teach.zone.id $indigo   ┃"
$e "$indigo                      ┃$yellow Tools    :$cyan Auto Visitor Blogstot $indigo     ┃"
$e "$indigo                      ┃$yellow WhatsApp :$cyan +628989766219 $indigo             ┃"
$e "$indigo                      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

}


input()
{

#InputData
echo    "$cyan          Contoh: $ungu http://site.com/2019/11/12/post.html"$green
read -p "           Input URL : " link
echo
echo    "$cyan          Masukan Jumlah Pengunjung"$green
read -p "           Jumlah    : " count

#URL_Autovisitor
url=$(curl -s -X POST 'https://javaghost.net/ini/visitor.php?' -d 'dav_site='${link}'&razin_jml='${count}'&submit=Visit' | grep "<tr><br><a><font color='#fff'>" | cut -d ":" -f2)

}

loop()
{

#Loop
$e
for i in $url
do

	echo "$yellow          IP Pengunjung$red  ≫$cyan $i $red ≫ $green Done!"
	sleep 1s #Biar aman hehe

done
echo
echo
echo    "$indigo          [$red A $indigo]$green Lanjut"
echo    "$indigo          [$red B $indigo]$green Exit$ungu"
read -p "            Input    : " plus

}

banner
input
loop

if [ $plus = "B" ] || [ $plus = "b" ]
then
echo
echo
echo
echo $red "       Good Byee...."
echo
echo
echo
exit
clear
fi

if [ $plus = "A" ] || [ $plus = "a" ]
then
clear
sh visit.sh
fi
