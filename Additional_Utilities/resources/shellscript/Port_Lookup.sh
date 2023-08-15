#! /bin/sh
#Script By Katie M. Nelson 3-14-23
#Thanks at https://wintelguy.com/port-search
#This is very handy to have!!
clear
read -p "Please type the port number to look up and press enter." Port

wget -q --header 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --header 'Accept-Encoding: gzip, deflate, br' --header 'DNT: 1' --header 'Connection: keep-alive' --header 'Cookie: cookieconsent_status=dismiss' --header 'Upgrade-Insecure-Requests: 1' --header 'Sec-Fetch-Dest: document' --header 'Sec-Fetch-Mode: navigate' --header 'Sec-Fetch-Site: none' --header 'Sec-Fetch-User: ?1' 'https://wintelguy.com/port-search/'$Port

mv $Port $Port.gz
gzip -d "$Port".gz
mv $Port $Port.html
cat "$Port".html | hxnormalize -x | w3m -dump -T 'text/html' | sed -r '/^\s*$/d' > $Port.text
sed -i 1,31d "$Port".text
linecount=$(wc -l < $Port.text)d
lineNum="$(grep -n "How to use:" $Port.text | head -n 1 | cut -d: -f1)"
sed -i $lineNum,$linecount $Port.text
clear
cat $Port.text
rm $Port.html
rm $Port.text
