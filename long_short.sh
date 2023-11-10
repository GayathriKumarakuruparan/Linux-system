#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 31/08/2023
DESCRIPTION : 
SAMPLE INPUT : ./long_short.sh 
SAMPLE OUTPUT : 
doc
arr=(`cut -d ":" -f1 /etc/passwd`)
len=`echo $((${#arr[@]}-1))`
small=${arr[0]}
large=${arr[0]}
for i in `seq 1 $len`
do
    if [ ${#arr[i]} -lt ${#small} ]
    then
        small=${arr[i]}
    fi
done
for i in `seq 1 $len`
do
    if [ ${#arr[i]} -gt ${#large} ]
    then
        large=${arr[i]}
    fi
done
echo "The Longest Name is: $large"
echo "The Shorest Name is: $small"


