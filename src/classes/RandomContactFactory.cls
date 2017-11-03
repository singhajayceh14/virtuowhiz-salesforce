public class RandomContactFactory {
	public static List<Contact> generateRandomContacts(integer n,String lname)
    {
        List<Contact> conList=new List<Contact>();
        for(integer i=1;i<=n;i++)
        {
            conList.add(new Contact(FirstName='Test '+i));
        }
        System.debug(conList);
        return conList;
    }
}