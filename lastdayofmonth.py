#!/usr/bin/env python
from datetime import date, timedelta

def last_day_of_month(d):
  next_month_first = d.replace(month = d.month + 1, day = 1)
  return (next_month_first + timedelta(days = -1)).day

print("Last day of the month is %s" % last_day_of_month(date.today()))


