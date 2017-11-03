public class AccountInfoController1 {
    @AuraEnabled
    public static List<Account> getList(String status)
    {
    	if(status<>null)
       		return [SELECT Id,name,phone,Active__c from Account where Active__c = : status  limit 10];
       	else
       		return [SELECT Id,name,phone,Active__c from Account limit 10];
    }
    @AuraEnabled
    public static List<string> getPicklist(){
    	List<string> status = new List<string>();
    	status.add('Yes');
    	status.add('No');
    	return status;
    }

}