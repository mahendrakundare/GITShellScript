#!/bin/bash -x
randomCheck=$((RANDOM%3));
ratePerHour=100;
if [ ${randomCheck} == 1 ];
then

	echo FULL TIME SALARY;
	echo employee is present;
	empHour=8;
elif [ ${randomCheck} == 2 ];
then
	echo PART TIME SALARY;
	empHour=4
	echo monthly parttime salary is 
else
	empHour=0;
	echo employee is not present;
fi
Salary=$(($ratePerHour*$empHour));
echo $Salary
