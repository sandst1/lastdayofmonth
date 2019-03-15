using System;

class LastDayOfMonth
{
    static void Main()
    {
        var now = DateTime.Now;
        var daysInMonth = DateTime.DaysInMonth(now.Year, now.Month);
        Console.WriteLine($"{daysInMonth} days in month");       
    }
}