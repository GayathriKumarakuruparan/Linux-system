#!/bin/bash

<<doc
NAME : GAYATHRI.K
DATE : 2/09/2023
DESCRIPTION :
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
if [ $# -ne 0 ]
then
    `sed -i '/^[[:blank:]]*$/d' $1`
    echo "Empty lines are deleted "
    echo "`cat $1`"

else
    echo "error"
fi


