trigger LeadTrigger on Lead (after update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            LeadTriggerHandler.createTaskonConversion(Trigger.new,Trigger.oldMap);
        }
    }

}
