#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE :
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
if [ $# -gt 0 ]
then
    for i in `ls*.jpg`
    do
        num=`echo $i|tr -cd [:digit:]`
        echo `mv $i $1$num.jpg`
    done
else
    echo "error"
fi


