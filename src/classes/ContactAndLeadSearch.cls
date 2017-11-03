public class ContactAndLeadSearch {
	public static List<List< SObject>> searchContactsAndLeads(String parm1)
    {
        List<List<sObject>> contactsAndLeadsList = [FIND 'Smith' IN ALL FIELDS RETURNING Contact(FirstName,LastName,Department),Lead(Name)];
 		System.debug('Success');
        System.debug(contactsAndLeadsList);
        return contactsAndLeadsList;
    }
}