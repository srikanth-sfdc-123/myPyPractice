trigger LeadConversion on Lead (after insert) {
    List<Account> acc = new List<Account>();
    List<Contact> Con = new List<Contact>();
    List<Opportunity> opp = new List<Opportunity>();
    
    for(Lead l:trigger.new){
        Account a = new Account();
        a.Name = l.Company;
        a.Phone = l.Phone;
        acc.add(a);
        Contact c = new Contact();
        c.LastName = l.lastName;
        con.add(c);
        Opportunity o = new opportunity();
        o.Name = l.LastName;
        o.Amount = l.AnnualRevenue;
        o.CloseDate = System.today();
        o.StageName = 'Closed Won';
        opp.add(o);
        
    }
    insert acc;
    insert con;
    insert opp;
    
}