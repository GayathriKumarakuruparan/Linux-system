#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 2/09/2023
DESCRIPTION : 
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
echo "123456789 10 11 12 "
option=y
while [ $option = 'y' ]
do
    read -p "enter" num
    case $num in 
    1) 
        echo "`whoami`"
        ;;
    2)
        echo "`printenv SHELL`"
        ;;
    3)
        cd
        echo "`pwd`"
        ;;
    4)
        echo "`uname -a`"
        ;;
    5)
        echo "`pwd`"
        ;;
    6)
        echo "`who -q`"
        ;;
    7)
        echo "`cat /etc/shells`"
        ;;
    8)
        echo "`lshw`"
        ;;
    9)
        echo "`cat /proc/cpuinfo`"
        ;;
    10)
        echo "`cat /proc/meminfo`"
        ;;
    11)
        echo "`df`"
        ;;
    12)
        echo "`ps`"
        ;;
esac
read -p "option" option
done


