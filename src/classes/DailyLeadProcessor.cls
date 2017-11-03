global class DailyLeadProcessor implements Schedulable {
global void execute(SchedulableContext sc)
{
    List<Lead> updateLead=new List<Lead>();
    List<Lead> lead=[SELECT id,LastName,LeadSource from Lead where LeadSource=''];
    for(Lead l:lead)
    {
        l.LeadSource='Dreamforce';
        updateLead.add(l);
    }
    update updateLead;
}
}