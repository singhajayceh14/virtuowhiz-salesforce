@isTest
public class AccountProcessorTest {
	@isTest public static void test1()
    {
        List<Account> acct=[SELECT Id FROM Account];
        List<ID> acctId;
        for(Account a:acct)
        {
            acctId.add(a.Id);
        }
        Account acc=new Account(Name='Demo9');
        Insert acc;
        Contact cont=new Contact();
        cont.FirstName ='Bob';
		cont.LastName ='Masters';
		cont.AccountId = acc.Id;
		Insert cont;
        set<Id> setId=new set<Id>();
        setId.add(acc.id);
        
        Test.startTest();
        AccountProcessor.countContacts(setId);
        Test.stopTest();
        Account newAcc = [SELECT Number_of_Contacts__c from Account where id = :acc.id LIMIT 1];
        System.assertEquals(Integer.valueOf(newAcc.Number_of_Contacts__c),1);
        System.debug('Success Future');
    }
}