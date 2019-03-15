#!/usr/bin/env python
from datetime import date, timedelta

now = date.today()
now = now.replace(month = now.month + 1, day = 1)
print((now + timedelta(days = -1)).day)


