({
	createProduct2: function (component, event, helper) {
        var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": "Product2"
        });
        createRecordEvent.fire();
    },  
    
})
