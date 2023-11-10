#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 28/08/2023
DESCRIPTION : print content of file from given line number to next give 
              number of lines.
SAMPLE INPUT : 5 2 file.txt
SAMPLE OUTPUT : line number 5
                line number 6
doc
if [ $# -eq 3 ] #to get the number of argument
then
    sum=$(($1+$2)) #sum of the line 
    sum1=$(($sum-1))
    total=10 # count of lines
    if [ $sum1 -le $total ] #sum of the line have to less or equal to total
    then
        echo  "`head -$21 $3|tail +$1|head -$2`" # print the output
    else
        echo "error" #if the sum of line is not equal to total
    fi
else
    echo "error" # if the argument is not equal to exact number of argument
    echo
fi


