trigger ContactTrigger on Contact (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            ContactTRiggerHandler.prevDupContWithSameEmailUnderSameAcc(Trigger.new);
        }
    }

}
