#!/bin/bash -x
randomCheck11=$((RANDOM%3));
if [ ${randomCheck} == 1 ];
then
	empHour=8;
elif [ ${randomCheck} == 2 ];
then
	empHour=4
else
	empHour=0;
fi

