
clear
#Warna
r='\033[31m'
y='\033[33m'
b='\033[34m'
c='\033[36m'
w='\033[0m'

#Banner
e="echo"
banner()
{

$e "Wellcome To My Tools\n"$W

}

input()
{

#InputData
echo $c"Contoh: http://site.com/2019/01/16/post.html"$r
read -p "Input URL : " link
echo
echo $c"Masukan Jumlah Pengunjung"$r
read -p "Jumlah    : " count

#URL_Autovisitor
url=$(curl -s -X POST 'https://javaghost.net/ini/visitor.php?' -d 'dav_site='${link}'&razin_jml='${count}'&submit=Visit' | grep "<tr><br><a><font color='#fff'>" | cut -d ":" -f2)

}

loop()
{

#Loop
$e
for i in $url
do

	echo "[$b+$w] visitor dengan IP : $y$i$w sukses berkunjung:*"
	sleep 2s #Biar aman hehe

done
}

banner
input
loop
