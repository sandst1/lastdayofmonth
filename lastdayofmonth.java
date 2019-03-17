import java.time.LocalDate;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAdjusters;

class LastDayOfMonth 
{
    public static void main(String[] args)
    {
        TemporalAdjuster ta = TemporalAdjusters.lastDayOfMonth();
        LocalDate now = LocalDate.now();
        LocalDate lastDayOfMonth = now.with(ta);
        System.out.println("Last day of the month is " + lastDayOfMonth.getDayOfMonth());
    }
}