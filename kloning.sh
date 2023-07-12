#!/bin/bash
#Script para clonar paginas web
#Uso de heramienta con fines legales
#Hacking Etico
#NO ME RESPONSABILIZO DEL USO ILEGAL QUE LE DEN A LA HERRAMIENTA
#Creador: KevinVargas.S
#color
red="\e[1;31m"
blue="\e[1;34m"
repeat () {
echo -e ${blue} " "
echo "  _  ___     ___  _   _ ___ _   _  ____    __        _______ ____    "
echo " | |/ / |   / _ \| \ | |_ _| \ | |/ ___|   \ \      / / ____| __ )   "
echo " | ' /| |  | | | |  \| || ||  \| | |  _ ____\ \ /\ / /|  _| |  _ \   "
echo " | . \| |__| |_| | |\  || || |\  | |_| |_____\ V  V / | |___| |_) |  "
echo " |_|\_\_____\___/|_| \_|___|_| \_|\____|      \_/\_/  |_____|____/   "
echo ""
echo "                                          (BY:KevinVarsa)"



echo "Ingrese su S.O"
echo ""
opcion=("1:Kali-Linux" "2:Termux" "3:Salir")
tiempo=0.4
          for i in ${opcion[@]};do
            echo $i
            sleep $tiempo
done
echo ""
read -p "Sistema Operativo: " so
echo ""
case $so in 
     [1-2-3])
                  if [ $so -eq 1 ];then
                echo "Instalando Paquetes..."
echo ""
                 sleep 1
               apt install httrack
echo ""
              echo "Descarga Exitosa!!!"
echo ""
           echo "Ingrese la URL de la pagina Web"
read -p "URL: " url
httrack $url
echo ""
sleep 1
elif [ $so -eq 2 ];then
echo -e ${red} "USO DE TERMUX."
echo ""
echo "Enter project name: hack <----- poner nombre del proyecto. En mi caso 'hack'"
echo "En otra terminal de termux ingresar el comando 'pwd' y copiar la ruta "
echo "Volviendo a la anterior terminal pegar la ruta en BASE PATH: (ruta)"
echo "ENter URLS: (pegar url de la pagina web)"
echo "SELECCIONAR LA OPCION '2'"
echo "PRESIONAR ENTER DEJANDO VACIO LO DEMAS HASTA QUE TE APAREZCA 'Ready to Launch' y poner la letra 'Y' para empezar la clonacion"
echo "Una vez clonado ingrese 'python -m http.server 3333'"
echo "En su navegador web ingrese '127.0.0.1:3333"
echo ""
echo "DESEA CONTINUAR???"
read enter
echo "Instalando paquetes Termux"
sleep 1
apt install httrack
pkg install httrack
pkg show httrack
echo -e ${red} ""
echo "Descarga Exitosa!!!"
httrack
elif [ $so -eq 3 ];then
echo "Saliendo..."
sleep 1
exit
fi
;;
*) echo "SO INCORRECTO. INTENTE NUEVAMENTE"
sleep 1
clear
repeat
;;
esac
}
repeat

echo "CLONACION EXITOSA!!!"
