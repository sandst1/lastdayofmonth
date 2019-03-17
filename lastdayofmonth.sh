#!/bin/bash

function check_leap_year() {
  year=$1
  if [ $(($year % 4)) -ne 0 ]; then
    echo 0
  elif [ $(($year % 100)) -ne 0 ]; then
    echo 1
  elif [ $(($year % 400)) -eq 0 ]; then
    echo 1
  else
    echo 0
  fi
}

ym=$(date +'%Y-%m')
year=$(echo $ym | cut -f1 -d-)
month=$(echo $ym | cut -f2 -d-)

days_per_month=(31 28 31 30 31 30 31 31 30 31 30 31)
leap_year=$(check_leap_year $year)

if [ $leap_year -eq 1 ] && [ $((month)) -eq 2 ]; then
  last_day=29
else
  last_day="${days_per_month[$(($month - 1))]}"
fi

echo "Last day of the month is ${last_day}"