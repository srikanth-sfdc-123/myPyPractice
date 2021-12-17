trigger TotalOppAndTotalAmt on Opportunity (after insert) {
    Set<Id> ids = new Set<Id>();
    for(Opportunity opp:trigger.new){
        ids.add(opp.AccountId);
    }
    List<Account> acc = [select Total_Opportunities__c,Total_Amount__c,
                        (select Id,Amount from Opportunities) from Account where Id =: ids];
    for(Account a:acc){
        a.Total_Opportunities__c = a.Opportunities.size() ;
        decimal sum = 0;
        for(Opportunity p:a.Opportunities){
            sum = sum+p.Amount;
        }
        a.Total_Amount__c = sum;
    }
    update acc;

}