<<doc
NAME         : GAYATHRI.K
DATE         :25.08.2023 
DESCRIPTION  :
SAMPLE INPUT :
SAMPLE OUTPUT:
doc
#!/bin/bash
for row in `seq 8` # range of chess board row 
do
    for col in `seq 8` # range of chess board column
    do
        sum=$(( $row + $col)) #sum of row and column

        total=$(($sum % 2)) # to find odd or even

       if [ $total -eq 0 ] # if even 
       then 

        echo -e -n "\e[47m" " " #black will print

       else

        echo -e -n "\e[40m" " " # else white will print
       fi

    done
    echo -e "\e[0m" " " #for a new line
done
