global class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful {
    global Integer recordsProcessed = 0;
	
	global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('SELECT Id,LeadSource from Lead');
    }
    global void execute(Database.BatchableContext bc, List<Lead> scope)
    {
        System.debug('execute fun');
        List<Lead> l = new List<Lead>();
        for(Lead lead : scope)
        {
			lead.LeadSource='DreamForce';
            l.add(lead);
            recordsProcessed+=1;
            
        }
        update l;
    }
    global void finish(Database.BatchableContext bc)
    {
        System.debug('Total recordsProcessed : '+recordsProcessed);
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        System.debug(job);
    }
}