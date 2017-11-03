public class AccountHandler {
	public static Account insertNewAccount(String newAccountName)
    {
        try{
        Account acc = new Account(Name=newAccountName);
        insert acc;
        ID accId=acc.Id;
        System.debug('Record Inserted '+accId);
        return acc;   
        }
        catch(DmlException e){
            System.debug('Record Error'+e.getMessage());
            return null;
            
        }
        
    }
}