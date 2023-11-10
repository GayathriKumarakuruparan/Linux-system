#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 25/08/2023
DESCRIPTION : Generate arithmetic calculator using command line arguments
SAMPLE INPUT : 25 - 5
SAMPLE OUTPUT : 25 - 5 = 20
doc
if [ $# -ne 0 ]
then
    if [ $# -eq 3 ]
    then
    case $2 in
        +)
            sum=`echo "$1 + $3"|bc`
            echo "$1 + $3 = $sum"
            ;;
        -)
            sub=`echo "$1 - $3"|bc`
            echo "$1 - $3 = $sub"
            ;;
        X)
            mul=`echo "$1 \* $3"|bc`
            echo "$1 X $3 = $mul"
            ;;
        /)
            div=`echo "$1 / $3"|bc`
            echo "$1 / $3 = $div"
            ;;
        *)
            echo "PLEASE PASS THE OPERATOR"
            ;;
    esac
else
    echo "error"
fi
else
    echo "error"
fi



       

        




