trigger AccountTrigger on Account (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            AccountTriggerHandler.createConOnAccCreation(Trigger.new);
        }
    }

}
