#!/bin/bash
<<doc
NAME : GAYATHRI.K
DATE : 30/08/2023
DESCRIPTION : 
SAMPLE INPUT :
SAMPLE OUTPUT :
doc
hour=`date|cut -d " " -f4|cut -d ":" -f1`
hours=`date|cut -d " " -f4`
day=`date|cut -d " " -f1`
date=`date|cut -d " " -f3`
month=`date|cut -d " " -f2`
user=`whoami`
if [ $hour -gt 15 -a $hour -lt 18 ]
then
    echo "Good Morning $user, Have nice day!
    This is $day $date in $month of 2023($hours)"
fi

