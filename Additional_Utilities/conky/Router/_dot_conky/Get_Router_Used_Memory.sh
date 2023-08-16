#! /bin/sh
#~/.conky/Router/.conky/Get_Router_Used_Memory.sh
RtrIP=$(ip route | grep default | awk '{print $3}')
wget -qO- http://Admin:password@$RtrIP/Status_Router.asp | grep 'setMemoryValues' | hxnormalize -x |grep -o '[0-9]*' > ~/.conky/Router/.conky/Router_mem.txt
RtrMemTotal=$(sed -n '10p' ~/.conky/Router/.conky/Router_mem.txt)
RtrMemUsed=$(sed -n '11p' ~/.conky/Router/.conky/Router_mem.txt)
RtrAvailableMem=$(($RtrMemTotal - $RtrMemUsed))
echo "$RtrMemTotal" "$RtrMemUsed" | awk '{print ($1-$2)/$1*100}'| awk '{print int($1+0.5)}'
