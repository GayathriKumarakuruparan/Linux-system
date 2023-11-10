#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 25/08/2023
DESCRIPTION : script to perform length of each and every string using array
SAMPLE INPUT : bash string_len.sh hi iam gayathri
SAMPLE OUTPUT : Length of string (hi)  - 2
                Length of string (iam)  - 3
                Length of string (gayathri) - 8 
doc
if [ $# -ne 0 ] #input string length have to more than 0
then
    arr=($@) #store the array in arr
    for i in ${arr[@]} #to get the input strings
    do
        echo "Length of string ($i) - ${#i}" #to print output
    done
else
    echo "error" #if the input string length is less than 0
fi



