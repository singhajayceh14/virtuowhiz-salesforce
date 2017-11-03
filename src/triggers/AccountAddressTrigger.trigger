trigger AccountAddressTrigger on Account (before insert,before update) {
	if(Trigger.isInsert)
    {
		for(Account a : Trigger.New) {
			if(a.Match_Billing_Address__c==true)
            {
                a.ShippingPostalCode=a.BillingPostalCode;
                System.debug('Insert Success');
                System.debug(a);
            }
	        
	    }        
    }
    if(Trigger.isUpdate)
    {
        for(Account a : Trigger.New) {
			if(a.Match_Billing_Address__c==true)
            {
                a.ShippingPostalCode=a.BillingPostalCode;
                System.debug('Update Success');
                System.debug(a);
            }
	        
	    }  
    }
}