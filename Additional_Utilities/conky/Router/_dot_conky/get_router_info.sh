#! /bin/sh
#~/.conky/Router/.conky/get_router_info.sh
RtrIP=$(ip route | grep default | awk '{print $3}')
wget -qO- http://Admin:password@192.168.1.1/Log_outgoing.asp > ~/.conky/Router/.conky/Router_info.txt
RtrOutgoingLog=$(cat ~/.conky/Router/.conky/Router_info.txt | egrep -o "<td>.*?</td>")
Var1=$(wget -qO- $RtrIP | grep 'Netgear' | tr '&nbsp;' ' ')
Var2=$(wget -qO- $RtrIP | grep 'nvram' | sed 's/<span id="nvram">//g' | tr '</' '*' | sed 's/**span>&nbsp;//g' | tr '*' '/')
Var3=$(wget -qO- $RtrIP | grep 'ipinfo' | sed 's/<div class="info">WAN<span id="ipinfo">&nbsp;IP: //g' | tr '</' '*' | tr '>' '*' | tr 'span' '*' | tr 'div' '*' | sed 's/*//g')
echo "DDWRT Router"
echo $Var1
echo "LAN IP : "$RtrIP
echo "WAN IP : "$Var3
echo NVRAM $Var2
