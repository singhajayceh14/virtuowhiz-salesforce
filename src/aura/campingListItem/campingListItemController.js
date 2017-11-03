({
	clickItem : function(component, event, helper) {
		var items = component.get("v.items");
        console.log("item after change : "+ JSON.stringify(items));
        var updateEvent = component.getEvent("addItemEvent");
        console.log(updateEvent);
        updateEvent.setParams({"item":items});
        updateEvent.fire();
        
        
	}
})