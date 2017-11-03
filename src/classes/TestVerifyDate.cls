@isTest
public class TestVerifyDate {
	@isTest public static void checkVerifyDate1()
    {	Date d1=date.parse('09/01/2017');
     	Date d2=date.parse('09/015/2017');
     	Date d3=date.parse('09/15/2017');
        Date date1=VerifyDate.CheckDates(d1,d2);
     	System.debug('Verfiy date1 : '+date1);
        System.assertEquals(d3,date1,'Fail');
        
    }
    @isTest public static void checkVerifyDate2()
    {
        Date d1=date.parse('09/01/2017');
     	Date d2=date.parse('10/06/2017');
     	Date d3=date.parse('09/30/2017');
        Date date1=VerifyDate.CheckDates(d1,d2);
        System.debug('Verfiy date2 : '+date1);
        System.assertEquals(d3,date1,'Fail');
        
    }
}