public class AddPrimaryContact implements Queueable {
private Contact contact;
private String state;
private List<Account> account;
private List<Contact> insertCont;

    public AddPrimaryContact(Contact contact, String state)
    {
        this.contact=contact;
        this.state=state;
    }
    public void execute(QueueableContext qc)
    {
        account=[SELECT Id,Name,(SELECT Id,FirstName,LastName from Contacts) from Account where BillingState=:state];
        insertCont=new List<Contact>();
        for(Account acc:account)
        {	
            insertCont.add(new Contact(AccountId=acc.Id,FirstName=contact.FirstName,LastName=contact.LastName));
   
        }
       if(insertCont.size()>0)
       {
           insert insertCont;
           System.debug('Insert Succesfull');
           System.debug(insertCont);
       }
    }
}