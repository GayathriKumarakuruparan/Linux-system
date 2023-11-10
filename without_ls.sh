#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 2/9/2023
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
if [ $# -ne 0 ] #to get the input arg
then
    for i in $@ #to loop the cond
    do
        if [ -d $i ] #to identify whether it is directory or not
        then
            cd $i #to change the dir
            echo "`pwd`" #to print the path
            echo "`echo *`" #to print the all dir without use ls
        else
            echo "error"
        fi
    done
else #if the arg is not given
    echo "error 3"
fi

