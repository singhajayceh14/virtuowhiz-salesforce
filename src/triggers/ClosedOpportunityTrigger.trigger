trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    Integer i=0;
    List<Task> taskList=new List<Task>();
    for(Opportunity o : [SELECT AccountId FROM Opportunity WHERE Id IN :Trigger.New AND StageName='Closed Won'])
    {	
            taskList.add(new Task(Subject='Follow Up Test Task',WhatId=o.Id));
           
    }   
    insert taskList;
    System.debug('Record Updated ');        
}