#!/bin/bash -x
employeeCheck=$((RANDOM%3))
isFullTime=1;
isPartTime=2;
isAbsent=0;
ratePerHour=200;
valid=true;
monthlySalary=0;
while [ $valid ]
do
	present=$((RANDOM%3))
case 	$present in $isFullTime )
	employeeHour=8
	;;
		     $isPartTime )
	employeeHour=4;
	;;
		      $isAbsent )
	employeeHour=0;
	;;
esac
	temp1=$(($temp1+$employeeHour));
	if [ $temp1 -le 51 ]
	then
	   temp=$(($ratePerHour*$employeeHour))
	   monthlySalary=$(($monthlySalary*$temp));
	else
	   break;
	fi
	temp=$(($ratePerHour*$employeeHour))
        monthlySalary=$(($monthlySalary + $temp));
done
