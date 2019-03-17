require 'date'

$days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def leap_year(month, year)
  if (year % 4 != 0)
    return false
  elsif (year % 100 != 0)
    return true
  elsif (year % 400 == 0)
    return true
  end
  return false
end

def last_day_of_month(d)
  if (d.month == 2 && leap_year(d.month, d.year))
    return 29
  else
    return $days_per_month[d.month - 1]
  end
end

print "Last day of the month is #{last_day_of_month(DateTime.now()).to_s}\n"
