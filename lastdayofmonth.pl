use DateTime;

my $today = DateTime->now();
my $lastDay = DateTime->last_day_of_month(
    year => $today->year,
    month => $today->month
)->day;

print "Last day of the month is $lastDay\n";