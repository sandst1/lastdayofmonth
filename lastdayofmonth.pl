use DateTime;

my $today = DateTime->now();
my $days = DateTime->last_day_of_month(
    year => $today->year,
    month => $today->month
)->day;

print "$days days in month\n";