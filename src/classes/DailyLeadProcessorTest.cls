@isTest
private class DailyLeadProcessorTest {
@isTest static void setup()
{	
    List<Lead> lead=new List<Lead>();
    String CRON_EXP ='2 19 17 8 SEP ? 2017';
    for(integer n=0;n<200;n++)
    {
        lead.add(new Lead(LastName='Test '+n,Company='VirtuoWhiz',LeadSource=''));
    }
    insert lead;
    Test.startTest();
    String jobId=System.schedule('DailyLeadProcessorTest',CRON_EXP,new DailyLeadProcessor());
     
    Test.stopTest();
}
}