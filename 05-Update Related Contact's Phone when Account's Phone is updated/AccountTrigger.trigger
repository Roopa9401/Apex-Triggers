trigger AccountTrigger on Account (after update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            AccountTriggerHandler.updaterelContOnAccUpdate(Trigger.new,Trigger.oldMap);
        }
    }
}
