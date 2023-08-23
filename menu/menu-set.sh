#!/bin/bash
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
clear
echo -e "${BICyan}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan}│${NC}${GARIS}                      << SETTINGS MENU >>                   ${NC}${BICyan}|${NC}"
echo -e "${BICyan}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "   ${BICyan}[${BIWhite}01${BICyan}] Add Domain / Renew      "
echo -e "   ${BICyan}[${BIWhite}02${BICyan}] Change Port All Account      "
echo -e "   ${BICyan}[${BIWhite}03${BICyan}] Webmin Menu      "
echo -e "   ${BICyan}[${BIWhite}04${BICyan}] Speedtest VPS   "
echo -e "   ${BICyan}[${BIWhite}05${BICyan}] Tentang Script     "
echo -e "   ${BICyan}[${BIWhite}06${BICyan}] Set Auto Reboot   "
echo -e "   ${BICyan}[${BIWhite}07${BICyan}] Restart All Service"
echo -e "   ${BICyan}[${BIWhite}08${BICyan}] Change Banner"
echo -e "   ${BICyan}[${BIWhite}09${BICyan}] Cek Bandwith"
echo -e "   ${BICyan}[${BIWhite}10${BICyan}] Setting Auto Reboot"
echo -e "   ${BICyan}[${BIWhite}11${BICyan}] Update Script"
echo -e "   ${BICyan}[${BIWhite}00${BICyan}]${NC}${BIYellow}Back To Menu"
echo -e "${BICyan}└───────────────────────────────────────────────────────────┘${NC}"
echo -e "\033[1;97m"
read -p " Select menu : " opt
echo -e ""
case $opt in
1 | 01) clear ; menu-domain ; exit ;;
2 | 02) clear ; port-change ; exit ;;
3 | 03) clear ; menu-webmin ; exit ;;
4 | 04) clear ; speedtest ; exit ;;
5 | 05) clear ; about ; exit ;;
6 | 06) clear ; auto-reboot ; exit ;;
7 | 07) clear ; restart ; exit ;;
8 | 08) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
9 | 09) clear ; bw ; exit ;;
10| 10) clear ; jam ; exit ;;
11| 11) wget https://raw.githubusercontent.com/Fv-store/v4/main/update.sh && chmod +x update.sh && ./update.sh && rm -f /root/update.sh ;;
0 | 00) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Menu yg anda pilih tidak valid" ; sleep 1 ; menu-set ;;
esac
