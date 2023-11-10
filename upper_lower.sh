#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 29/08/2023
DESCRIPTION :  
SAMPLE INPUT : upper_lower.sh file1.txt
SAMPLE OUTPUT : 1-Lower to upper
                2-Upper to Lower
                please select option: 2
                hi 
                my name is gayathri
                nice to meet you
doc
if [ $# -ne 0 ]
then
    if [ -f $1 ]
    then
        if [ -s $1 ]
        then
            echo "1-Lower to upper"
            echo "2-Upper to lower"
            read -p "please elect option : " opt
                if [ $opt -eq 1 ]
                then
                    echo "`cat $1 | tr [:lower:] [:upper:]` "
                elif [ $opt -eq 2 ]
                then
                    echo "`cat $1 | tr [:upper:] [:lower:]` "
                else
                    echo "please enter option:"
                fi
        else
            echo "error1"
        fi
        else
        echo "error2"
    fi
else
    echo "error 3"
fi


