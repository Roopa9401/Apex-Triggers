public class LeadTriggerHandler {

    // Create a follow-up Task when a Lead is converted
    public static void createTaskonConversion(List<Lead> ldrec, Map<Id, Lead> oldMapld){

        // List to store Tasks that will be created
        List<Task> tasklist = new List<Task>();

        // Loop through all updated Lead records
        for(Lead ld : ldrec){

            // Check if the Lead has just been converted
            if(ld.IsConverted == true && oldMapld.get(ld.Id).IsConverted == false){

                // Create a new Task
                Task ta = new Task();

                // Set Task details
                ta.Subject = 'Other';
                ta.WhoId = ld.ConvertedContactId;
                ta.Description = 'Follow-up Task on Lead Conversion';
                ta.Status = 'Not Started';
                ta.Priority = 'Normal';

                // Add the Task to the list
                tasklist.add(ta);
            }
        }

        // Insert all Tasks in a single DML operation
        if(!tasklist.isEmpty()){
            insert tasklist;
        }
    }
}
