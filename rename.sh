#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE :
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
echo "before"
ls
for i in `ls`
do
    if [ -d ]
    then
        new_name=`echo $i|tr a-z A-Z`
        if [ $i != $new_name ]
        then
            echo `mv $i $new_name`
        fi
    fi
    if [ -f ]
    then
        new=`echo $i|tr A-Z a-z`
        if [ $i != $new ]
        then
            echo `mv $i $new`
        fi
    fi
done
echo "after"
ls
