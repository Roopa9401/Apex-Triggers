public class AccountTriggerHandler {

    // This method creates a Contact for each newly created Account
    public static void createConOnAccCreation(List<Account> accrec) {

        // List to store Contacts that need to be inserted
        List<Contact> conlist = new List<Contact>();

        // Loop through each Account received from the trigger
        for (Account acc : accrec) {

            // Create a new Contact record
            Contact con = new Contact();

            // Set the Contact Last Name to the Account Name
            // (LastName is a mandatory field on Contact)
            con.LastName = acc.Name;

            // Associate the Contact with the newly created Account
            con.AccountId = acc.Id;

            // Add the Contact to the list for bulk insertion
            conlist.add(con);
        }

        // Insert all Contacts in a single DML statement (Bulkification)
        if (!conlist.isEmpty()) {
            insert conlist;
        }
    }
}
