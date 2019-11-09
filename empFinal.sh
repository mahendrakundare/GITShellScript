#!/bin/bash -x
employeeCheck=$((RANDOM%2));
if [ ${employeeCheck} == 1 ];
then
echo "employee is present";
else
echo "employee is not present"
fi

