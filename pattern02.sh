#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 25/08/2023
DESCRIPTION : Generate the pattern(number increse from top to bottom)
SAMPLE INPUT : Enter the number of pattern: 3
SAMPLE OUTPUT : 1
                23
                456    
doc

read -p "ENTER THE NUMBER OF PATTERN:" num #Get the input from the user

count=1 #to get the count to increse the input

for row in `seq $num` #to get a range of row 
do
    for col in `seq $row` #to get a range of column
    do

        echo -n "$count " # to print the count value
        count=$((count+1)) # increment of count
       
    done
    echo 
done

