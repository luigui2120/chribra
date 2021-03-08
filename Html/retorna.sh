#!/bin/bash

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


negro="\e[1;30m"
azul="\e[1;34m"
verde="\e[1;32m"
cian="\e[1;36m"
rojo="\e[1;31m"
purpura="\e[1;35m"
amarillo="\e[1;33m"
blanco="\e[1;37m"
while :
do
clear
echo '	
╔━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╗
┃ ╔███╗  ╔███╗ ╔█████╗ ╔██████╗  ╔███████╗     ┃
┃ ║██║║██║║██║ ██╔══██╗║██║  ║██ ║██╔════      ┃
┃ ║██║║██║║██║ ███████║║██║  ║██ ║███████║     ┃ 
┃ ║██║╚══╝║██║ ██╔══██║║██║  ║██ ║██╔════      ┃
┃ ║██║    ║██║ ██║  ██║║██████║  ║███████║     ┃
┃ ╚══╝    ╚══╝ ╚═╝  ╚═╝╚══════╝  ╚═══════╝V2.3 ┃
╚━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╝
'| lolcat -a -d 20
echo -e -n "
${blanco}Este script esta hecho con fines educativo 
"${blanco}
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
      █${amarillo} OPTIONES${verde} █
      └══════════┘
"${blanco}
echo -e -n "${yellow}
$grn [12] $yellow Copiar el html o texto                                                           
$grn [13] $yellow Mover el html o texto                                                               
$grn [14] $yellow Copiar carpeta                                                                   
$grn [15] $yellow Mover carpeta                                                                      
$grn [16] $yellow Eliminar archivo o carpeta                                                      
$grn [17] $yellow Descargar Imagenes                                                              
$grn [18] $yellow Imprimir el codigo de la url en la terminal                                      
$grn [19] $yellow Sacar la información del encabezado de un sitio web HTTP                         
$grn [20] $yellow Obtener más información del sitio web                                            
$grn [21] $yellow Almacenar cookies de sitio web                                                   
$grn [22] $yellow Acceder a los archivos que han sido modificados después de un tiempo del html    
$grn [23] $yellow Retornar al inicio                                                               
                      $blanco HELP / OPTIONS                                              
"${blanco}                  

echo -e -n "${rojo}
     ┌═══════════════┐
     █${blanco}Ingresa opcion${rojo} █
     └═══════════════┘
"${blanco}
read -p $'\e[1;31m     └──╼\e[0m\e[1;92m ' x
case $x in
12)
echo -n "Usted guardo en carpeta (y/n)? "
	read answer
        if [ "$answer" != "${answer#[Yy]}" ] ;then
	clear 
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var12
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var13
	 cp $my_var12/$my_var13 /sdcard/
	 reset
         else
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var14
	 cp $my_var14 /sdcard/
	 reset
         fi 
;;
13)
echo -n "Usted guardo en carpeta (y/n)? "
	read answer33
        if [ "$answer33" != "${answer33#[Yy]}" ] ;then
	clear 
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var17
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var16
	 mv $my_var17/$my_var16 /sdcard/
	 reset
         else
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var15
	 mv $my_var15 /sdcard/
         reset
         fi
;;
14)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var18
		cp $my_var18 /sdcard/
	 reset	 
;;
15)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var19
	 mv $my_var19 /sdcard/
         reset
;;
16)
 echo -e "$grn [1] $cyan Eliminar Archivo "f" "
	echo -e "$grn [2] $cyan Eliminar carpeta "rf""
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el codigo a eliminar:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var20
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var21
	rm -$my_var20 $my_var21
	clear
;;
17)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var31
	wget $my_var31
	sleep 6
	clear
;;
18)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var22
	curl $my_var22
	sleep 6
	clear
;;
19)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var23
        echo -n "Desea guardar registro en una carpeta(y/n)? "
	read anseer
	if [ "$anseer" != "${anseer#[Yy]}" ] ;then
        echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre para el archivo:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var31
	curl -I  $my_var23 | tee -a $my_var31.txt
	clear
	else
	curl -I  $my_var23
	sleep 8
	clear
	fi
;;
20)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var24
	curl -v $my_var24
	sleep 3.5
	clear
;;
21)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var50
        echo -n "Desea guardar registro en una carpeta(y/n)? "
	read ansee
	if [ "$ansee" != "${ansee#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var32
	mkdir $my_var32
	curl --cookie-jar $my_var32/cookies.txt $my_var50/cookies.html -O
	mv cookies.html $my_var32/
	else
	curl --cookie-jar cookies.txt $my_var50/cookies.html -O 
	fi
	sleep 3.5
	clear
;;
22)
echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var28
        echo -n "Desea crear carpeta (y/n)? "
	read anse
	if [ "$anse" != "${anse#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var31
	mkdir $my_var31
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la fecha d/m/a:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var29
        echo -n "Desea guardar el registro (y/n)? "
	read ans
	if [ "$ans" != "${ans#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var30
	curl -z $my_var29 $my_var28 | tee -a $my_var31/$my_var30.txt
	sleep 2
	clear
	else
        curl -z $my_var29 $my_var28
        sleep 8
        clear
         fi
	else
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la fecha d/m/a:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var29
        echo -n "Desea guardar el registro (y/n)? "
	read ans
	if [ "$ans" != "${ans#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var30
	curl -z $my_var29 $my_var28 | tee -a $my_var30.txt
	sleep 2
	clear
	else
        curl -z $my_var29 $my_var28
        sleep 8
        clear
        fi
	fi
;;
23)
./retornal.sh
 clear
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
  esac
done		
;;