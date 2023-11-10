#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE :
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
echo "BEFORE"
echo "`cat $1`"
if [ $# -ne 0 ]
then
    if [ -f $1 ]
    then
        if [ -s $1 ]
        then
            total=`wc < $1|cat $1|wc -l`
            percentage=`echo $((total/5))`
            if [ $total -ge 5 ]
            then
                for i in $percentage
                do
                random=`shuf -i 1-$total -n$percentage`
                sed -i "$random s/.*/<------Deleted------>/" $1
                done
                echo "AFTER"
                echo "`cat $1`"
            fi
        fi
    fi
else
    echo "error"
fi
            







