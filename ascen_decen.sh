#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 1/09/2023
DESCRIPTION : write a script for ascending or decending order by user input.
SAMPLE INPUT : ./ascending_decending.sh -a 5 3 2 1 4
SAMPLE OUTPUT : ascending order: 5 4 3 2 1
doc
if [ $# -ne 0 ]
then
    declare -a arr
    arr=($@)
    len=(`echo $((${#arr[@]}-2))`)
    length=(`echo ${#arr[@]}`)
    case $1 in 
        -a)
            for i in `seq 1 $len`
            do
                for j in `seq 1 $(($length -$i -1))`
                do
                   
                    if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
                    then
                       temp=${arr[j]}
                       arr[$j]=${arr[$((j+1))]}
                       arr[$(($j+1))]=$temp
                   fi
               done
           done
           echo `echo Ascending order of array is ${arr[@]:1}`
           ;;
       -d)
           ;;
       *)
           ;;

   esac
else
    echo "error"
fi





