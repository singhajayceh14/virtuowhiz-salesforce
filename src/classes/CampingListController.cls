public with sharing class CampingListController {
	@AuraEnabled
    public static List<Camping_Item__c> getItems()
    {
        System.debug('Item return doInit : ');
     	return [SELECT Id,Name,Price__c,Quantity__c,Packed__c FROM Camping_Item__c];   
    }
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item)
    {
        System.debug('Item before inserted : '+item);
        upsert item;
        System.debug('Item inserted : '+item);
        return item;
    }
}