#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE :
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
arr=`cut -d ":" -f3 /etc/passwd`

if [ $# -eq 0 ]
then 
    count=0
    for i in ${arr[@]}
    do
        if [ "$i" -gt "500" -a "$i" -lt "10000" ]
        then
            count=`echo $(($count+1))`
        fi
    done
    echo "$count"

elif [ $# -eq 2 ]
then
    if [ $1 -lt $2 ]
    then
        count=0
        for i in range ${arr[@]}
        do
            if [ "$i" -gt "$1" ] && [ "$i" -lt "$2" ]
            then
                count=`echo $(($count+1))`
            fi
        done
        echo "total range of $1 to $2 is : $count"
    else
        echo "error"
    fi
else
    echo "error 2"
fi
                


