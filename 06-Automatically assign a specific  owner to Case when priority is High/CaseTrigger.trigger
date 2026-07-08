trigger CaseTrigger on Case (before insert,before update) {
    if(trigger.isBefore){
        if(Trigger.isInsert){
            CaseTriggerHandler.setOwnerWhenPriorityHighOnInsert(Trigger.new);
        }
        if(Trigger.isUpdate){
            CaseTriggerHandler.setOwnerWhenPriorityHighOnUpdate(Trigger.new,Trigger.oldMap);
        }
    }

}
