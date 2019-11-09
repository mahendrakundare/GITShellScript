#!/bin/bash -x
isPresent=$((RANDOM%2));
if [ ${isPresent} == 1 ];
then
echo "employee is present";
else
echo "employee is not present"
fi

