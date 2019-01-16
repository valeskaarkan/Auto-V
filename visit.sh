green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
ungu="\033[35;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"
red="\033[31;1m"
clear

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

read -p "URL      : " link
read -p "Jumlah	  : " brpa

url=$(curl -s -X POST 'https://javaghost.net/ini/visitor.php?' -d 'dav_site='${link}'&razin_jml='${brpa}'&submit=Visit' | grep "<tr><br><a><font color='#fff'>" | cut -d ":" -f2)

}
