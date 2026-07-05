public class ContactTriggerHandler {
    // Prevent creating Contacts with the same Email under the same Account
    public static void prevDupContWithSameEmailUnderSameAcc(List<Contact> newContacts){

        // Store unique Account IDs and Email addresses from incoming Contacts
        Set<Id> accountIds = new Set<Id>();
        Set<String> emails = new Set<String>();

        // Collect Account IDs and Emails
        for (Contact con : newContacts) {
            if (con.AccountId != null && con.Email != null) {
                accountIds.add(con.AccountId);
                emails.add(con.Email);
            }
        }

        // List to store matching Contacts already present in Salesforce
        List<Contact> existingContacts = new List<Contact>();

        // Query existing Contacts with the same Account and Email
        if (!accountIds.isEmpty() && !emails.isEmpty()) {
            existingContacts = [
                SELECT Id, AccountId, Email
                FROM Contact
                WHERE AccountId IN :accountIds
                AND Email IN :emails
            ];
        }

        // Map to store existing Contact records using AccountId + Email as the key
        Map<String, Id> contactMap = new Map<String, Id>();

        // Populate the map
        for (Contact con : existingContacts) {
            contactMap.put(con.AccountId + '-' + con.Email.toLowerCase(), con.Id);
        }

        // Validate incoming Contacts
        for (Contact con : newContacts) {

            if (con.AccountId != null && con.Email != null) {

                // Create a unique key using AccountId and Email
                String key = con.AccountId + '-' + con.Email.toLowerCase();

                // If the key already exists, prevent the record from being saved
                if (contactMap.containsKey(key)) {
                    con.addError('A Contact with this Email already exists under the same Account.');
                }
            }
        }
    }
}
