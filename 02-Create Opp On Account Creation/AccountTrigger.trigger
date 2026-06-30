trigger AccountTrigger on Account (after insert) {

    // Check if the trigger is executing in the 'after' context
    if (Trigger.isAfter) {

        // Check if the trigger event is an insert operation
        if (Trigger.isInsert) {

            // Call the handler method and pass the newly created Account records
            // Trigger.new contains the list of Accounts that were inserted
            AccountTriggerHandler.createOppOnAccCreation(Trigger.new);
        }
    }
}
