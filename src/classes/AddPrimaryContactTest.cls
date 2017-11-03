@isTest
public class AddPrimaryContactTest {
@isTest public static void setup()
{
    List<Account> acc=new List<Account>();
    for(integer n=0;n<50;n++)
    {
        acc.add(new Account(BillingState = 'CA', name = 'Test'+n));
    	acc.add(new Account(BillingState = 'NY', name = 'Test'+n));    
    }
   insert acc;
    Contact c=new Contact();
    c.FirstName='Dmo';
    c.LastName='Ymo';
    insert c;
    String state='NY';
    AddPrimaryContact apc=new AddPrimaryContact(c,state);
    state='CA';
    AddPrimaryContact apc1=new AddPrimaryContact(c,state);
    Test.startTest();
    Id batchId=System.enqueueJob(apc);
    Id batchId1=System.enqueueJob(apc1);
    Test.stopTest();
    System.assertEquals(50, [select count() from Contact where accountID IN (SELECT id FROM Account WHERE BillingState = 'CA')]); 
    System.assertEquals(50, [select count() from Contact where accountID IN (SELECT id FROM Account WHERE BillingState = 'NY')]); 
    
}
}