#!/bin/bash
watch  "nmcli -f "CHAN,BARS,SIGNAL,SSID" d wifi list ifname wlx984827e741e5  | sort -n"
