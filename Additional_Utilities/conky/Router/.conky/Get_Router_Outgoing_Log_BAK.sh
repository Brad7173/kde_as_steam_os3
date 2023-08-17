#! /bin/sh
#~/.conky/Router/.conky/Get_Router_Outgoing_Log.sh
#dt=$(date '+%D %T %p')
clear
RtrIP=$(ip route | grep default | awk '{print $3}')
wget -qO- http://Admin:yourpassword@$RtrIP/Log_outgoing.asp > ~/.conky/Router/.conky/Router_Outgoing_Log_Raw.txt
RtrOutgoingLogRaw=$(cat ~/.conky/Router/.conky/Router_Outgoing_Log_Raw.txt)
echo $RtrOutgoingLogRaw | hxnormalize -x | w3m -dump -T 'text/html' | sed -r '/^\s*$/d'
exit
