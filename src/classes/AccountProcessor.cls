public class AccountProcessor {
@future(callout=true) public static void countContacts(set<Id> acct)
{
    List<Account> accounts = [Select Id, Name from Account Where Id IN :acct];
    List<Account> updateAcc = new List<Account>();
    List<Contact> contact = [Select AccountId from Contact];
    Integer count=0;
    for(Account a: accounts)
    {
        for(Contact c:contact)
        {
            if(c.AccountId==a.Id)
            {
                ++count;
            }
        }
        updateAcc.add(new Account(Id=a.Id,Number_of_Contacts__c=count));
        System.debug('ID:'+a.Id+' Count: '+count);
        count=0;
    }
    update updateAcc;
    System.debug('Success');
}
}