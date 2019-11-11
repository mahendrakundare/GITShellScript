#!/bin/bash -x
employeeCheck=$((RANDOM%3))
isFullTime=1;
isPartTime=2;
isAbsent=0;
ratePerHour=200;
valid=true;
NUM_WORKING_DAYS=20;
totalWorkingHours=0;
totalWorkingDays=0;

function getWorkingHours(){
	case $1 in $isFullTime )
	workhours=8;;
		in $isPartTime )
	workhours=4;;
			* )
	workhours=0;;
	esac
	echo $workhours;
}
