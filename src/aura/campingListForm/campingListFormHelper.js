({
	 createItem : function(component, newItem) {
        // fire event
        console.log("createItem is fire");
        var addItem = component.getEvent("addItem");
        addItem.setParams({"item":newItem});
        addItem.fire();
        var newItemStr = "{\"sobjectType\":\"Camping_Item__c\",\"Name\":\"\",\"Price__c\":0,\"Quantity__c\":0,\"Packed__c\":false}";
        console.log(JSON.parse(newItemStr));
          component.set("v.newItem",{'sObjectType':'Camping_Item__c',
                             'Name':'',
                             'Price__c':0,
                             'Quantity__c':0,
                             'Packed__c':'false'});
         
         
    }
})