public class AccountTriggerHandler {
    public static void createOppOnAccCreation(List<Account> accrec){
        List<Opportunity> opplist=new List<Opportunity>();
        for(account acc:accrec){
            Opportunity opp=new Opportunity();
            opp.Name=acc.Name;
            opp.CloseDate=System.Today() + 10;
            opp.StageName='Prospecting';
            opp.AccountId=acc.id;
            opplist.add(opp);
        }
        if(!opplist.isEmpty()){
            insert opplist;
        }
    }
    }
