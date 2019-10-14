#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
function banner() {
echo "
						XPATH Blind/Responsive Authentication Injection Checker
        					        version 1.0a
                			       Script - Hackeruniversee
					       Coder  - Haroon Awan
"
}
banner
echo -e "$red [$green+$red] 1:$off Linux Users"; 
echo -e "$red [$green+$red] 2:$off Termux Users";
echo "";
echo -ne "$red [$green+$red] Select An Option:$off: " ;
read Option
if [ $Option -eq "1" ]
then 
 echo "";
 echo -e "$red [$green+$red] 1:$off Load Injection Checker "; 
 echo -e "$red [$green+$red] 2:$off Extract Login Parameters ";
 echo "";
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option

if [ $Option -eq "1" ]
 then
 ./auth_injection.sh
 fi
  
if [ $Option -eq "2" ]
then
    perl dumper.pl
 fi
fi

if [ $Option -eq "2" ]
then 
 echo "";
 echo -e "$red [$green+$red] 1:$off Load Injection Checker "; 
 echo -e "$red [$green+$red] 2:$off Extract Login Parameters ";
 echo "";
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option

if [ $Option -eq "1" ]
 then
 ./auth_injection.sh
 fi
  
if [ $Option -eq "2" ]
then
    perl dumper.pl
 fi
fi