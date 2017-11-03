@isTest
public class LeadProcessorTest {
@isTest public static void setup()
{
    List<Lead> lead = new List<Lead>();
    for(integer i=0;i<200;i++)
    {
        Lead l=new Lead();
        l.LastName='Demo '+i;
        l.Company='VirtuoWhiz';
        l.LeadSource='Demo';
       lead.add(l);
            }
    insert lead;
    
        Test.startTest();
        LeadProcessor obj = new LeadProcessor();
        Id batchId = Database.executeBatch(obj);
        Test.stopTest();
      
    }
}