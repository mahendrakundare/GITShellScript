#!/bin/bash -x

rate_hour=300;
isPartTime=2;
isFullTime=1;
isAbsent=0;
Salary=0;
counter=0;
working_hours=0;
hours=0;
function total_hours(){
   work=$((RANDOM%3))
   case $work in $isFullTime )
          working_hours=8;;
        $isPartTime )
          working_hours=5;;
        $isAbsent )
          working_hours=0;;
   esac
   echo $working_hours
}
function Wage(){
for (( day=1; day<=5; day++ ))
do
   
   hours=$( total_hours )
   temp=$(($rate_hour * $hours))
   Salary=$(($Salary+$temp))
   Wages[((counter++))]=$temp
   
done
echo ${Wages[@]}
echo $Salary
}

result=$( Wage )
