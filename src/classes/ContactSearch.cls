public class ContactSearch {
	public static List<Contact> searchForContacts(String lname, String postAddr)
    {
        List<Contact> cont=[SELECT Account.Name FROM Contact WHERE LastName=:lname AND MailingPostalCode=:postAddr];
        System.debug('Success');
        System.debug(cont);
        return cont;
    }
}