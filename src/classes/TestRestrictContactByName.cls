@isTest
public class TestRestrictContactByName {
	@isTest public static void testCase1()
    {
        Test.startTest();
        Contact c=new Contact(LastName='INVALIDNAME');
        Database.SaveResult conList = Database.insert(c, false);
        Test.stopTest();
  		System.assert(!conList.isSuccess());
        System.assert(conList.getErrors().size()>0);
    }
}