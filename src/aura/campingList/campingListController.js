({
    doInit: function(component, event, helper) {
       
		var action=component.get("c.getItems");
        action.setCallback(this, function(response){
            var status = response.getState();
            if(status === "SUCCESS")
            {
                component.set("v.items",response.getReturnValue());
                console.log("Status = "+status);
            }
        });
        $A.enqueueAction(action);
},
    

   handleAddItem: function(component, event, helper){
   var item = event.getParam("item");
       var action = component.get("c.saveItem");
        //json stringify is not needed I think.       
        action.setParams({
                    "item": item
                });

        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {        
                var items = component.get("v.items");
                items.push(item);
                component.set("v.items",items);
            }
        });
        $A.enqueueAction(action); 
}
   
})