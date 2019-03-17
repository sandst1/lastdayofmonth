using System;

class LastDayOfMonth
{
    static void Main()
    {
        var now = DateTime.Now;
        var daysInMonth = DateTime.DaysInMonth(now.Year, now.Month);
        Console.WriteLine($"Last day of the month is {daysInMonth}");       
    }
}