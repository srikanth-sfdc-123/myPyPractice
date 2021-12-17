trigger AfterAccInsertOppCreated on Account (after insert) {
    List<Opportunity> optyList = new List<Opportunity>();
    for(Account a:trigger.new){
        if(a.industry == 'Energy' && a.AnnualRevenue>2000000){
            Opportunity opp = new Opportunity();
            opp.Name = a.Name;
            opp.StageName = 'Prospecting';
            opp.CloseDate = system.today()+30;
            opp.AccountId = a.Id;
            optyList.add(opp);
                                             
        }
    }
     insert optyList;                                            

}