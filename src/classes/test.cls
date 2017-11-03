public class test {
public static void demo()
{
    date myDate = date.newInstance(2004, 11, 21);
Integer month = myDate.month();
    System.debug(month);
system.assertEquals(11, month);
}
}