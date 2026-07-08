public class CaseTriggerHandler {

    // Assign a specific owner when a new Case is created with High Priority
    public static void setOwnerWhenPriorityHighOnInsert(List<Case> caserec){

        // Retrieve the User who will be assigned as the Case Owner
        User owner = [SELECT Id FROM User WHERE Name = 'roopa cm' LIMIT 1];

        // Loop through all new Case records
        for(Case ca : caserec){

            // Assign the owner if the Case Priority is High
            if(ca.Priority == 'High'){
                ca.OwnerId = owner.Id;
            }
        }
    }

    // Assign a specific owner when an existing Case's Priority is changed to High
    public static void setOwnerWhenPriorityHighOnUpdate(List<Case> caserec,
                                                        Map<Id, Case> oldMapCase){

        // Retrieve the User who will be assigned as the Case Owner
        User owner = [SELECT Id FROM User WHERE Name = 'roopa cm' LIMIT 1];

        // Loop through all updated Case records
        for(Case ca : caserec){

            // Check if the Priority has changed to High
            if(ca.Priority == 'High' &&
               oldMapCase.get(ca.Id).Priority != 'High'){

                // Assign the specified owner
                ca.OwnerId = owner.Id;
            }
        }
    }
}
