#!/bin/bash -x
employeeCheck=$((RANDOM%2));
if [ ${employeeCheck} == 1 ];
then
	empHour=8;
elif [ ${employeeCheck} == 2 ];
then
	empHour=4
else
	empHour=0;
fi

