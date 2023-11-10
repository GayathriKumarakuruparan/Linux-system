#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 29/08/2023
DESCRIPTION : Perform arithmetic operation on digits 
SAMPLE INPUT : 1234+
SAMPLE OUTPUT : sum of digits = 10
doc
if [ $# -gt 0 ]
then
   num=$1
   op=`echo ${num: -1}`
   sum=0
   case $op in
       +)
           len=`echo $((${#num}-2))`
           for i in `seq 0 $len`
           do
               sum=`echo $(($sum + ${num:$i:1}))`
           done
           echo "Sum of digits = $sum"
           ;;
       -)
           len=`echo $((${#num}-2))`
           sub=`echo ${num:0:1}`
           for i in `seq 1 $len`
           do
               sub=`echo $(($sub - ${num:$i:1}))`
           done
           echo "Subtraction of digits = $sub"
           ;;
       x)
           len=`echo $((${#num}-2))`
           mul=`echo ${num:0:1}`
           for i in `seq 1 $len`
           do
               mul=`echo $(($mul * ${num:$i:1}))`
           done
           echo "Multiplication of digits = $mul"
           ;;
       /)
           len=`echo $((${#num}-2))`
           div=`echo ${num:0:1}`
           for i in `seq 1 $len`
           do
               div=`echo "scale=2; $div/${num:$i:1}"|bc`
           done
           echo "Division of digits = $div"
           ;;
       *)
           echo "error"
           ;;
   esac
else
    echo "error2"
fi


