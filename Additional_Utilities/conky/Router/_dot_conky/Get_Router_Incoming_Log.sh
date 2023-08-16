#! /bin/sh
#~/.conky/Router/.conky/Get_Router_Incoming_Log.sh
Time=$(date +"%I:%M-%p")
clear
RtrIP=$(ip route | grep default | awk '{print $3}')
wget -qO- http://Admin:password@$RtrIP/Log_incoming.asp > ~/.conky/Router/.conky/Router_Incoming_Log_Raw.txt
RtrIncomingLogRaw=$(cat ~/.conky/Router/.conky/Router_Incoming_Log_Raw.txt)
printf '%s\n' $Time >> ~/Logs/$(date +%Y-%m-%d)-Router_Incoming.log
cat ~/.conky/Router/.conky/Router_Incoming_Log_Raw.txt | hxnormalize -x | w3m -dump -T 'text/html' | sed -r '/^\s*$/d' >> ~/Logs/$(date +%Y-%m-%d)-Router_Incoming.log
echo $RtrIncomingLogRaw | hxnormalize -x | w3m -dump -T 'text/html' | sed -r '/^\s*$/d'
exit
