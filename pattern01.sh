#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 25/08/2023
DESCRIPTION :Generate a pattern(number increments from left to right)
SAMPLE INPUT : ENTER THE NUMBER OF PATTERN: 4
SAMPLE OUTPUT :1
               12
               123
               1234
doc

read -p "ENTER THE NUMBER OF PATTERN:" num #get input from user

for row in `seq $num` #range of pattern row
do 
    for col in `seq $row` #range of pattern column
    do 

        echo -n "$col" #to print in pattern

    done

    echo
done



