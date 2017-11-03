({
handleDeleteRecord: function(component, event, helper) {
    component.find("recordHandler").deleteRecord($A.getCallback(function(deleteResult) {
        if (deleteResult.state === "SUCCESS" || deleteResult.state === "DRAFT") {
            console.log("Record is deleted.");
        }
        else if (deleteResult.state === "INCOMPLETE") {
            console.log("User is offline, device doesn't support drafts.");
        }
        else if (deleteResult.state === "ERROR") {
            console.log('Problem deleting record, error: ' +
                        JSON.stringify(deleteResult.error));
        }
        else {
            console.log('Unknown problem, state: ' + deleteResult.state +
                        ', error: ' + JSON.stringify(deleteResult.error));
        }
    }));}
})