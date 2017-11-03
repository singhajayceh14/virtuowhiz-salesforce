({
     createItem: function(component,items) {
        
            var action=component.get("c.saveItem");
            var itemList = component.get("v.newItem"); 
            console.log("item List :"+JSON.stringify(itemList));
            action.setParams({"item":itemList});
            action.setCallback(this, function(response){
                var state = response.getState();
                if(state === "SUCCESS")
                {
                    var item=component.get("v.items");
                    item.push(response.getReturnValue());
                    component.set("v.items",item);
                }
                else{
                    console.log("Error in Helper");
                }
            });
            $A.enqueueAction(action);
        }
    

})