trigger AccountTrigger on Account (after update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            AccountTriggerHandler.updaterelContOnAccUpdateusingSOGL(Trigger.new,Trigger.oldMap);
            AccountTriggerHandler.updaterelContOnAccUpdateusingMap(Trigger.new,Trigger.oldMap);
        }
    }

}
