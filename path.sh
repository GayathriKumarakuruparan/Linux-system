#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 2/09/2023
DESCRIPTION : for each directoy in the $path, display the number of exe file
SAMPLE INPUT : 
SAMPLE OUTPUT :
doc
arr=(`printenv PATH|tr ":" " "`) #to get the all directory in array
total=0 
for i in ${arr[@]} #for loop the cond
do
    count=0
    if [ -d $i ] #to check whether it is directory or not
    then
        cd $i #to change the directory
        for j in `ls` #to get list of directory
        do
            if [ -x $j ] #to get executable premission
            then
                count=`echo $((count+1))` #to count the file
            fi
        done
        echo "Current dir:$i" #to print output
        echo "current count:$count"
        total=`echo $((total+count))` #to get total of all count of file
    fi
done
echo "Total-$total" #to get total output









