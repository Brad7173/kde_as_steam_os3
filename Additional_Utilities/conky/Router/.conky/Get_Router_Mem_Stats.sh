#! /bin/sh
#~/.conky/router/.conky/Get_Router_Stats.sh
RtrIP=$(ip route | grep default | awk '{print $3}')
wget -qO- http://Admin:yourpassword@$RtrIP/Status_Router.asp | grep 'setMemoryValues' | hxnormalize -x |grep -o '[0-9]*' > ~/.conky/router/.conky/Router_mem.txt
RtrMemTotal=$(sed -n '10p' ~/.conky/router/.conky/Router_mem.txt)
RtrMemUsed=$(sed -n '11p' ~/.conky/router/.conky/Router_mem.txt)
RtrAvailableMem=$(($RtrMemTotal - $RtrMemUsed))
echo Total Memory:$RtrMemTotal kb
echo Used Memory:$RtrMemUsed kb
echo Free Memory:$RtrAvailableMem kb
