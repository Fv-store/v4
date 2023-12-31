#!/bin/bash
BURIQ () {
    curl -sS https://raw.githubusercontent.com/Fv-store/ipvps/main/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Fv-store/ipvps/main/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Fv-store/ipvps/main/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Fv-store/ipvps/main/ip | grep $MYIP | awk '{print $3}')
fi

# =========================================
ISP=$(curl -s ipinfo.io/org?token=7578ac19afd785 | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city?token=7578ac19afd785 )
IPVPS=$(wget -qO- ipinfo.io/ip)
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Exporting Language to UTF-8

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;33m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
CYAN='\033[1;96m'       # Cyan
LIGHT='\033[1;97m'      # White
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
WHITE='\033[0;97m'        # WHITE
GARIS='\E[44;1;39m'        # Garis Biru

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'



# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="FranataSTORE"

###########- END COLOR CODE -##########
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# Getting Ram Information
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"

# // Clear
clear
clear && clear && clear
clear;clear;clear
# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-epro | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

sshws_s="${GREEN}ON${NC}"
# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew cert... " 
sleep 2
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew cert done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl restart xray
systemctl restart nginx
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}

clear
echo -e "${CYAN}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${CYAN}│${NC}${WHITE}${GARIS}                     << INFORMASI VPS >>                    ${NC}${CYAN}|${NC}"
echo -e "${CYAN}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${WHITE}Sever Uptime        ${NC}${BIGreen}  : $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "  ${WHITE}Current Time        ${NC}${BIGreen}  : $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "  ${WHITE}Operating System    ${NC}${BIGreen}  : $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "  ${WHITE}Domain VPS          ${NC}${BIGreen}  : $( cat /etc/xray/domain )"
echo -e "  ${WHITE}Server IP           ${NC}${BIGreen}  : ${IPVPS}"
echo -e "  ${WHITE}ISP & CITY          ${NC}${BIGreen}  : ${ISP}"" & ${CITY}"
echo -e "  ${WHITE}Ram                 ${NC}${BIGreen}  : ${uram} / ${tram}GB"
echo -e "  ${WHITE}CPU USAGE           ${NC}${BIGreen}  : ${cpu_usage}"
echo -e "  ${WHITE}Clients Name        ${NC}${BIYellow}  : $Name ${NC}"
echo -e "  ${WHITE}Script Expired      ${NC}${BIYellow}  : $Exp (${NC}${BIGreen} $dayleft Days ${NC}${BIYellow})${NC}"
echo -e "  ${WHITE}Developer           ${NC}${BIYellow}  : FV STORE TUNNELING${NC}"
echo -e "${CYAN}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${CYAN}│${NC}${WHITE}${GARIS}                     << INFORMASI VPS >>                    ${NC}${CYAN}|${NC}"
echo -e "${CYAN}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "      ${BIGreen}[ SSH Websocket: ${sshws_s} ${BIGreen}]  [ NGINX: ${status_nginx} ${BIGreen}] [ X-RAY : ${status_xray} ${BIGreen}] "
echo -e "${CYAN}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${CYAN}│  \033[0m ${BOLD}${GREEN}   ${BIYellow} SSH${GREEN}       ${BIYellow}VMESS  ${GREEN}     ${BIYellow}VLESS  ${GREEN}     ${BIYellow}TROJAN${GREEN}     $NC "
echo -e "${CYAN}│  \033[0m ${Blue}     $ssh1          $vma           $vla           $tra              $NC"
echo -e "${CYAN}└────────────────────────────────────────────────────────────┘${NC}"
echo -e " ${BICyan}HARI ini${NC}: ${red}$ttoday$NC ${BICyan}KEMARIN${NC}: ${red}$tyest$NC ${BICyan}BULAN${NC}: ${red}$tmon$NC $NC"
echo -e "${CYAN}┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "${CYAN}│${NC}${WHITE}${GARIS}                     << MENU TUNNELING >>                   ${NC}${CYAN}|${NC}"
echo -e "${CYAN}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "   ${BICyan}[${NC}${WHITE}01${NC}${BICyan}] SSH     ${BICyan}[${BIYellow}MENU${BICyan}]${NC}""    ${BICyan}[${NC}${WHITE}06${NC}${BICyan}] SETTING    ${BICyan}[${BIYellow}MENU${BICyan}]${NC}"
echo -e "   ${BICyan}[${NC}${WHITE}02${NC}${BICyan}] VMESS   ${BICyan}[${BIYellow}MENU${BICyan}]${NC}""    ${BICyan}[${NC}${WHITE}07${NC}${BICyan}] BACKUP     ${BICyan}[${BIYellow}MENU${BICyan}]${NC}"
echo -e "   ${BICyan}[${NC}${WHITE}03${NC}${BICyan}] VLESS   ${BICyan}[${BIYellow}MENU${BICyan}]${NC}""    ${BICyan}[${NC}${WHITE}08${NC}${BICyan}] INSTAL UDP ${BICyan}[${BIYellow}MENU${BICyan}]${NC}"
echo -e "   ${BICyan}[${NC}${WHITE}04${NC}${BICyan}] TROJAN  ${BICyan}[${BIYellow}MENU${BICyan}]${NC}""    ${BICyan}[${NC}${WHITE}09${NC}${BICyan}] GEN SSL    ${BICyan}[${BIYellow}MENU${BICyan}]${NC}"
echo -e "   ${BICyan}[${NC}${WHITE}05${NC}${BICyan}] TRIAL   ${BICyan}[${BIYellow}MENU${BICyan}]${NC}""    ${BICyan}[${NC}${WHITE}10${NC}${BICyan}] ADD-HOST   ${BICyan}[${BIYellow}MENU${BICyan}]${NC}"
echo -e "${CYAN}└────────────────────────────────────────────────────────────┘${NC}"
echo -e "\033[0;97m"
read -p "   Select menu << 1 - 10 >> : " opt
echo -e ""
case $opt in
1 | 01) clear ; menu-ssh ;;
2 | 02) clear ; menu-vmess ;;
3 | 03) clear ; menu-vless ;;
4 | 04) clear ; menu-trojan ;;
5 | 05) clear ; menu-trial ;;
6 | 06) clear ; menu-set ;;
7 | 07) clear ; menu-bckp ;;
8 | 08) clear ; clear ; wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
9 | 09) clear ; certv2ray ;;
10| 10) clear ; add-host ;;
0 | 00) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; exit ;;
esac
