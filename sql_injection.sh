#!/bin/bash
#set -x {Enable this to understand, how request is going and why request is failed}
rm cookiestore.txt
rm output.txt
echo -e ""
echo -e "[-] Input Setting      "
echo -ne "[+] Enter Host                : "
read Host
echo -e "[?] Obtaining Cookie       "
curl --silent --cookie-jar cookiestore.txt $Host > /dev/null
echo -ne "[+] Enter User Parameter      : "
read UParameters
echo -ne "[+] Enter Pass Parameter      : "
read PParameters
echo -ne "[+] Enter Submit Parameter    : "
read SParameters
echo -ne "[+] Enter File Path       : "
read Filepath
echo -e ""
echo -e "[-] Performing Request         "
echo -ne "[?] Checking Response URL : "
curl -sI $Host -w '%{response_code}%{redirect_url}\n' -o /dev/null
echo -ne "[?] Final Redirected Url  : "
curl -Ls $Host -o /dev/null -w '%{url_effective}'
echo -e ""
echo -e ""
echo -e "[-] Posting    "
echo -e "[+] Output file            : output.txt"
echo -e ""


while read query
do
content=$(curl --write-out "%{http_code}\n" --silent --output /dev/null -L -X POST $Host --data "${UParameters}&${PParameters}&${SParameters}${query}")
 echo $query
 echo $content >> output.txt
done < query.txt
echo -e ""
echo -e "[-] Finished       "
echo -e ""