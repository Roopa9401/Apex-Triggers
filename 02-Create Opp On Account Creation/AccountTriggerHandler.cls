public class AccountTriggerHandler {

    // This method creates an Opportunity whenever a new Account is created
    public static void createOppOnAccCreation(List<Account> accrec) {

        // List to store all Opportunities that need to be inserted
        List<Opportunity> opplist = new List<Opportunity>();

        // Loop through each Account received from the trigger
        for (Account acc : accrec) {

            // Create a new Opportunity record
            Opportunity opp = new Opportunity();

            // Set Opportunity Name same as Account Name
            opp.Name = acc.Name;

            // Set Close Date to 10 days from today's date
            opp.CloseDate = System.Today() + 10;

            // Set the initial stage of the Opportunity
            opp.StageName = 'Prospecting';

            // Associate the Opportunity with the newly created Account
            opp.AccountId = acc.Id;

            // Add the Opportunity to the list for bulk insertion
            opplist.add(opp);
        }

        // Insert all Opportunities in a single DML statement (Bulkification)
        if (!opplist.isEmpty()) {
            insert opplist;
        }
    }
}
