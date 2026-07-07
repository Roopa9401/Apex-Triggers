public class AccountTriggerHandler {
    //update cont phone if acc phone is updated
    public static void updateRelContOnAccUpdate(List<Account> accRec,
                                                     Map<Id, Account> oldMapAcc) {

    Set<Id> accountIds = new Set<Id>();
    Map<Id, String> accountPhoneMap = new Map<Id, String>();

    // Collect Accounts whose Phone has changed
    for (Account acc : accRec) {
        if (acc.Phone != oldMapAcc.get(acc.Id).Phone) {
            accountIds.add(acc.Id);
            accountPhoneMap.put(acc.Id, acc.Phone);
        }
    }

    List<Contact> relConList = new List<Contact>();

    if (!accountIds.isEmpty()) {

        // Query related Contacts
        for (Contact con : [
            SELECT Id, Phone, AccountId
            FROM Contact
            WHERE AccountId IN :accountIds
        ]) {

            // Update Contact Phone
            con.Phone = accountPhoneMap.get(con.AccountId);
            relConList.add(con);
        }
    }

    if (!relConList.isEmpty()) {
        update relConList;
    }
}
}
