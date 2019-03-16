#include <stdbool.h>
#include <stdio.h>
#include <time.h>

int days_in_month[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

bool leap_year(year)
{
    if (year % 4 != 0)
    {
        return false;
    }
    else if (year % 100 != 0)
    {
        return true;
    }
    else if (year % 400 == 0)
    {
        return true;
    }
    return false;
}

int last_day_of_month(struct tm* timeinfo)
{
    if (timeinfo->tm_mon == 1 && leap_year(timeinfo->tm_year + 1900))
    {
        return 29;
    }
    return days_in_month[timeinfo->tm_mon];
}

int main(void)
{
    time_t now;
    struct tm* timeinfo;

    now = time(&now);
    timeinfo = localtime(&now);

    printf("Last day of month is %d\n", last_day_of_month(timeinfo));
}