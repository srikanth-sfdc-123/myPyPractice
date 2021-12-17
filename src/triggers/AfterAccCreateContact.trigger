trigger AfterAccCreateContact on Account (after insert) {
    List<Contact> cons = new List<Contact>();
    for(Account a:trigger.new){
        Contact c = new Contact();
        c.AccountId = a.Id;
        c.LastName = a.Name;
        c.Phone = a.Phone;
        cons.add(c);
                            
    }
    insert cons;

}