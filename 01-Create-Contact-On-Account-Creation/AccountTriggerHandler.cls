public class AccountTriggerHandler {
    public static void createConOnAccCreation(List<Account> accrec){
        List<Contact> conlist=new List<Contact>();
        for(account acc:accrec){
            Contact con=new Contact();
            con.LastName=acc.Name;
            con.AccountId=acc.id;
            conlist.add(con);
        }
        if(!conlist.isEmpty()){
            insert conlist;
        }
        }
    }
