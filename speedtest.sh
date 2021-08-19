#!/usr/bin/env bash
red=`echo -en "\e[31m"`
white=`echo -en "\e[97m"`
darkgray=`echo -en "\e[90m"`
echo "${darkgray}
███████╗██████╗ ███████╗███████╗██████╗     ████████╗███████╗███████╗████████╗
██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗    ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝
███████╗██████╔╝█████╗  █████╗  ██║  ██║       ██║   █████╗  ███████╗   ██║   
╚════██║██╔═══╝ ██╔══╝  ██╔══╝  ██║  ██║       ██║   ██╔══╝  ╚════██║   ██║   
███████║██║     ███████╗███████╗██████╔╝       ██║   ███████╗███████║   ██║   
╚══════╝╚═╝     ╚══════╝╚══════╝╚═════╝        ╚═╝   ╚══════╝╚══════╝   ╚═╝   
Tool By: Aayush Pudasaini                                                                         
"
echo "${white}[1] Speedtest"
echo "[2] Install"
echo "[3] Update"
echo "[4] Remove"
echo "[5] Exit"
echo "Choose an Option: " ;read OPTION

if  [[ $OPTION -eq 1 ]]
then
	clear
	speedtest
elif [[ $OPTION -eq 2 ]]; then
	curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
	sudo apt-get install speedtest-cli
	sudo apt-get update && sudo apt-get full-upgrade -y
	echo "${darkgray}Installation Successfull !!!"
elif [[ $OPTION -eq 3 ]]; then
	sudo apt-get upgrade speedtest-cli
	echo "${darkgray}Update Successfully !!!"
elif [[ $OPTION -eq 4 ]]; then
	sudo apt-get purge speedtest-cli
	echo "${darkgray}Removed Successfully !!!" 
elif [[ $OPTION -eq 5 ]]; then
	echo "Exit !!!" ; 
	clear
else
	echo "${red}Invalid Number !!!"
	./speedtest.sh
fi
