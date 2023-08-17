#! /bin/sh
#~/.conky/router/.conky/Get_Router_Outgoing_Log.sh
Time=$(date +"%I:%M:%S-%p")
clear
RtrIP=$(ip route | grep default | awk '{print $3}')
wget -qO- http://Admin:yourpassword@$RtrIP/Log_outgoing.asp > ~/.conky/router/.conky/Router_Outgoing_Log_Raw.txt
RtrOutgoingLogRaw=$(cat ~/.conky/router/.conky/Router_Outgoing_Log_Raw.txt)
#printf '%s\n' $Time >> ~/Logs/$(date +%Y-%m-%d)-Router_Outgoing.log
cat ~/.conky/router/.conky/Router_Outgoing_Log_Raw.txt | hxnormalize -x | w3m -dump -T 'text/html' | sed -r '/^\s*$/d' >> ~/Logs/$(date +%Y-%m-%d)-Router_Outgoing.log | printf '%s\n' $Time >> ~/Logs/$(date +%Y-%m-%d)-Router_Outgoing.log
echo $RtrOutgoingLogRaw | hxnormalize -x | w3m -dump -T 'text/html' | sed -r '/^\s*$/d'
exit
