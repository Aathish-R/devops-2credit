#!/bin/bash
#####################################################################################################
#  Author : Aathish R
#  Date created : 13-06-2022
#  description : sorting the integers
 
#  Date modified: 13-06-2022

######################################################################################################

read -a arr <<< "9 8 6 7 6 4 6 7 6"
n="${#arr[@]}";

for (( i=0;i<$n;i++ ))
do
    for (( j=$i+1;j<$n;j++))
    do
        if (( ${arr[$i]} > ${arr[$j]} ))
        then
            t=${arr[$i]};
            arr[$i]=${arr[$j]};
            arr[$j]=$t;
        fi
    done
done

echo ${arr[@]}

