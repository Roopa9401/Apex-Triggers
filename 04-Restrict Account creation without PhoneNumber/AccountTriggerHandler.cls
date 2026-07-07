public class AccountTriggerHandler {
     public static void prevcreationwithoutphone(List<Account> newaccrec){
        for(Account acc:newaccrec){
            if(acc.phone==null){
                acc.addError('Account cannot be created without a Phone Number');
            }
        }
        
    }
    }
