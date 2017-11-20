({
	doInit : function(component, event, helper) {
		var action = component.get("c.getList");
        action.setCallback(this, function(data){
            component.set("v.accounts",data.getReturnValue());
            
        });
        $A.enqueueAction(action);
        
        var action1 = component.get("c.getPicklist");
        action1.setCallback(this, function(data){
        	component.set("v.accountStatus", data.getReturnValue());
        });
        $A.enqueueAction(action1);
	}
})