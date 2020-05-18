package eh;

import java.sql.Timestamp;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.GregorianCalendar;

import oracle.jbo.domain.Date;


/**
 * General useful static utilities for working with Dates.
 *
 * @author Eddie Harris
 */

public class DateUtils {
    final static String DATE_FORMAT = "dd/MM/yyyy";

    /**
     * Get the current date/time.
     * @return the current date/time.
     */
    public static java.util.Date now() {
        return Calendar.getInstance().getTime();
    }

    public static java.util.Date endOfToday() {
        // today
        Calendar date = new GregorianCalendar();
        // set hour, minutes, seconds and millis
        date.set(Calendar.HOUR_OF_DAY, 23);
        date.set(Calendar.MINUTE, 59);
        date.set(Calendar.SECOND, 59);
        date.set(Calendar.MILLISECOND, 999);
        java.util.Date endOfTday = date.getTime();
        return endOfTday;
    }

    /**
     * Get the current date/time as a formatted string.
     * @param format, the format to apply to the date/time.
     * @return the formatted current date/time.
     */
    public static String now(String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(now());
    }

    public static oracle.jbo.domain.Date now_oracle_date() {
        return new Date(Date.getCurrentDate());
    }

    public static oracle.jbo.domain.Date now_oracle_timestamp() {
        return new Date(new Timestamp(System.currentTimeMillis()));
    }

    /**
     * Format a given date/time.
     * @param date, the date to format.
     * @param format, the format to apply to the date/time.
     * @return the formatted date.
     */
    public static String format(java.util.Date date, String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(date);
    }

    public static Calendar toUtilCal(java.util.Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        return cal;
    }

    public static Calendar toUtilCal(java.sql.Date date) {
        return toUtilCal(toUtilDate(date));
    }

    public static Calendar toUtilCal(oracle.jbo.domain.Date date) {
        return toUtilCal(toUtilDate(date));
    }

    public static java.util.Date toUtilDate(java.sql.Date date) {
        return date;
    }

    public static java.util.Date toUtilDate(oracle.jbo.domain.Date date) {
        return date.getValue();
    }

    public static java.util.Date toUtilDate(String sDate) {
        java.util.Date uDate = null;
        DateFormat formatter = new SimpleDateFormat(DateUtils.DATE_FORMAT);
        try {
            uDate = formatter.parse(sDate);
        } catch (ParseException e) {
            uDate = null;
        }
        return uDate;
    }

    public static java.util.Date toUtilDate(Calendar cal) {
        return cal.getTime();
    }

    public static oracle.jbo.domain.Date toOracleDate(java.util.Date date) {
        return new oracle.jbo.domain.Date(toSqlDate(date));
    }

    public static oracle.jbo.domain.Date toOracleDate(java.sql.Date date) {
        return toOracleDate(toUtilDate(date));
    }

    public static oracle.jbo.domain.Date toOracleDate(Calendar cal) {
        return toOracleDate(toUtilDate(cal));
    }

    public static oracle.jbo.domain.Date toOracleDate(long time) {
        return toOracleDate(new java.sql.Date(time));
    }

    public static oracle.jbo.domain.Date toOracleDate(String sDate) {
        oracle.jbo.domain.Date oDate = null;
        if (sDate != null) {

            try {
                DateFormat formatter = new SimpleDateFormat(DateUtils.DATE_FORMAT);
                java.util.Date uDate = formatter.parse(sDate);
                oDate = toOracleDate(uDate);
            } catch (ParseException pe) {
                oDate = null;
            }
        }

        return oDate;
    }


    public static java.sql.Date toSqlDate(java.util.Date date) {
        return new java.sql.Date(date.getTime());
    }

    public static java.sql.Date toSqlDate(oracle.jbo.domain.Date date) {
        return toSqlDate(toUtilDate(date));
    }

    public static java.sql.Date toSqlDate(Calendar cal) {
        return toSqlDate(toUtilDate(cal));
    }

    public static int getFinancialYear() {
        return getFinancialYear(now());
    }

    public static java.util.Date getEofy() {
        return getEofy(now());
    }

    public static java.util.Date getNextEofy() {
        return getNextEofy(now());
    }

    public static java.util.Date getPrevEofy() {
        return getPrevEofy(now());
    }

    /**
     * Returns the year portion of the financial year date relative to the date provided.
     */
    public static int getFinancialYear(java.util.Date date) {

        int year = 0;

        if (date != null) {
            Calendar cal = Calendar.getInstance();
            cal.setTime(getPrevEofy(date));
            year = cal.get(Calendar.YEAR);
        }
        return year;
    }

    /**
     * Returns the actual end of financial year date relative to the date provided.
     */
    public static java.util.Date getEofy(java.util.Date date) {

        java.util.Date eofy = null;

        if (date != null) {
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);

            int year = cal.get(Calendar.YEAR);
            if (cal.get(Calendar.MONTH) > Calendar.JUNE) {
                year++;
            }

            cal.set(year, Calendar.JUNE, 30, 0, 0, 0);
            eofy = toUtilDate(cal);
        }
        return eofy;
    }

    /**
     * Returns the NEXT end of financial year date relative to the date provided.
     * This is mainly used for components that cycle through EOFY such as the custom 'targetDate' component.
     * It should NOT be used to actually determine the EOFY date for a given date.
     * e.g. if the date provided is 30-JUN-2015, then nextEofy will return 30-JUN-2016.
     */
    public static java.util.Date getNextEofy(java.util.Date date) {

        java.util.Date eofy = null;

        if (date != null) {
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);

            int year = cal.get(Calendar.YEAR);
            if ((cal.get(Calendar.MONTH) > Calendar.JUNE) ^
                (cal.get(Calendar.MONTH) == Calendar.JUNE && cal.get(Calendar.DAY_OF_MONTH) == 30)) {
                year++;
            }

            cal.set(year, Calendar.JUNE, 30, 0, 0, 0);
            eofy = toUtilDate(cal);
        }
        return eofy;
    }

    /**
     * Returns the PREVIOUS end of financial year date relative to the date provided.
     * This is mainly used for components that cycle through EOFY such as the custom 'targetDate' component.
     * It should NOT be used to actually determine the EOFY date for a given date.
     * e.g. if the date provided is 30-JUN-2015, then prevEofy will return 30-JUN-2014.
     */
    public static java.util.Date getPrevEofy(java.util.Date date) {

        java.util.Date eofy = null;

        if (date != null) {
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);

            int year = cal.get(Calendar.YEAR);
            if (cal.get(Calendar.MONTH) < Calendar.JULY) {
                year--;
            }

            cal.set(year, Calendar.JUNE, 30, 0, 0, 0);
            eofy = toUtilDate(cal);
        }
        return eofy;
    }

    /**
     *Returns the exactDate of month adding months to current date
     * ex today is 10/Mar/2016 .getDateFromToday(1,-2) will return 01/Jan/2016,getDateFromToday(1,2) will return 01/May/2016
     *
     *
     */
    public static oracle.jbo.domain.Date getCalculatedDateFromToday(int exactDate, int addMonths) {
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DATE, exactDate);
        cal.add(Calendar.MONTH, addMonths);
        java.util.Date today = cal.getTime();
        return DateUtils.toOracleDate(today.getTime());

    }

    /**
     * @param date, an oracle.jbo.domain.Date Object
     * @return an java.util.Calendar
     * @deprecated use toUtilCal
     */
    @Deprecated
    public static Calendar convertJboDateToUtilCalendar(oracle.jbo.domain.Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date.dateValue());
        return cal;
    }

    /**
     * @param date, an java.util.Date Object
     * @return an oracle.jbo.domain.Date
     * @deprecated use toOracleDate
     */
    @Deprecated
    public static oracle.jbo.domain.Date convertUtilDateToJboDate(java.util.Date date) {
        return new oracle.jbo.domain.Date(new java.sql.Date(date.getTime()));
    }

    /**
     * @param date, an oracle.jbo.domain.Date Object
     * @return an java.util.Date
     * @deprecated use toUtilDate
     */
    @Deprecated
    public static java.util.Date convertJboDateToUtilDate(oracle.jbo.domain.Date date) {
        return date.getValue();
    }

    /**
     * @param cal, an java.util.Calendar Object
     * @return an oracle.jbo.domain.Date
     * @deprecated use toOracleDate
     */
    @Deprecated
    public static oracle.jbo.domain.Date convertUtilCalendarToJboDate(Calendar cal) {
        return new oracle.jbo.domain.Date(new java.sql.Date(cal.getTimeInMillis()));
    }

    /**
     * Returns the next end of financial year date relative to the date provided.
     * oracle.jbo.domain.Date version
     * @deprecated use toOracleDate
     */
    @Deprecated
    public static oracle.jbo.domain.Date nextEofy(oracle.jbo.domain.Date date) {

        oracle.jbo.domain.Date eofy = null;

        if (date != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date.dateValue());

            int year = calendar.get(Calendar.YEAR);
            if ((calendar.get(Calendar.MONTH) > Calendar.JUNE) ^
                (calendar.get(Calendar.MONTH) == Calendar.JUNE && calendar.get(Calendar.DAY_OF_MONTH) == 30)) {
                year++;
            }

            Calendar nextEofy = Calendar.getInstance();
            nextEofy.set(year, Calendar.JUNE, 30);
            eofy = toOracleDate(nextEofy);
        }
        return eofy;
    }

    /**
     * Returns the previous end of financial year date relative to the date provided.
     * oracle.jbo.domain.Date version
     * @deprecated use toOracleDate
     */
    @Deprecated
    public static oracle.jbo.domain.Date prevEofy(oracle.jbo.domain.Date date) {

        oracle.jbo.domain.Date eofy = null;

        if (date != null) {
            Calendar cal = Calendar.getInstance();
            cal.setTime(date.dateValue());

            int year = cal.get(Calendar.YEAR);
            if ((cal.get(Calendar.MONTH) < Calendar.JULY)) {
                year--;
            }

            Calendar prevEofy = Calendar.getInstance();
            prevEofy.set(year, Calendar.JUNE, 30);
            eofy = toOracleDate(prevEofy);
        }
        return eofy;
    }
}
