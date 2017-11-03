public class NewCaseListController {
private String status='New';
    public List<Case> getNewCases()
    {
        List<Case> cases=[select ID,CaseNumber FROM Case WHERE status=:status];
        return cases;
    }
}