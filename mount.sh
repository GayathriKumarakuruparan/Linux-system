#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE :
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
if [ $# -ne 0 ]
then
    arr=(`df|cut -d " " -f1`)
    a=${#arr[*]}
    len=`echo $((${#arr[@]}-1))`
    use=(`df|tr -s " " |cut -d " " -f5`)
    available=(`df|tr -s " "|cut -d " " -f4`)
    mount=(`df|tr -s " " | cut -d " " -f6`)
    count=0
    for i in `seq 1 $len`
    do       
       if [ ${arr[$i]} = $1 ]
       then
            count=1
            echo  "File- system $1 is mounted on ${mount[$i]} and it is having ${use[$i]} used spaced with ${available[$i]} free"
        fi
    done
    if [ $count -eq 0 ]
    then
        echo "$1 is not mounted"
    fi
else
    echo "error"
fi


