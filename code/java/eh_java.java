package sage;

public class eh_java{

    // tenerary operator
public String myTeneraryOperator {

    return boolean ? "TRUE" : "FALSE" ;

}

// enum
public enum StaffType {
    CONSTACTOR("C"), PERMINENT("P"), SUPPORT("S"), DIRECTOR("D");

    private String description;

    private StaffType(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return this.description;
    }

    }

    // switch
    private String position;

    if(staffType!=null&&!staffType.isEmpty())
    {
        switch (staffType) {
        case "C":
            this.staffType = StaffType.CONSTACTOR;
            break;
        case "P":
            this.staffType = StaffType.PERMINENT;
            break;
        case "D":
            this.staffType = StaffType.DIRECTOR;
            break;
        case "S":
        default: // NOTE: This is when no type line is specified
            this.staffType = StaffType.SUPPORT;
            break;
        }
    }else
    { // NOTE: This is when no type line is specified
        this.staffType = StaffType.SUPPORT;
    }

    // Set | No duplicates
    // https://docs.oracle.com/javase/tutorial/collections/interfaces/set.html
    import java.util.Set;

    // List  of Strings  (Ordered) | Duplicates allowed
    // https://docs.oracle.com/javase/tutorial/collections/interfaces/list.html

    import java.util.List;
import java.util.ArrayList;

List<String> aListOfStrings = new ArrayList<String>();

    // Map  (Key Value pair) | No duplicates
    // https://docs.oracle.com/javase/tutorial/collections/interfaces/map.html
import java.util.Map;

Map<String, Object> attributes = component.getAttributes();

    for(Map.Entry<String, Object> entry:attributes.entrySet())
    {
    System.out.println(entry.getKey() + "/" + entry.getValue());
}

    // Another approach is to call the database function using plain JDBC API:
    // https://vladmihalcea.com/2016/03/22/how-to-call-oracle-stored-procedures-and-functions-from-hibernate/

    Session session = entityManager.unwrap(Session.class);

    Integer commentCount = session.doReturningWork(
    connection -> {
    try (CallableStatement function = connection
        .prepareCall(
            "{ ? = call fn_count_comments(?) }" )) {
        function.registerOutParameter( 1,Types.INTEGER);function.setInt(2,1);function.execute();return function.getInt(1);}});

    // Date Time Stuff
    private static SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
private static String dateAsString;

    dateAsString=sdf.format(new Date());

    // ..cont
    import java.text.SimpleDateFormat;

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

    // ..cont

    import oracle.jbo.domain.Date;

private Date queryDate;

    queryDate=new Date("2011-06-30");

    //System 
    System.currentTimeMillis();

myTimestamp{
        java.sql.Timestamp myTimestamp = Timestamp.valueOf(java.time.LocalDateTime.now());
}


}


// check for null and else return this
Optional.ofNullable(one).orElse(two)


