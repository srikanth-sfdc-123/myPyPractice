trigger AvoidDuplicacyOnContact on Contact (before insert) {
    List<String> st = new List<String>();
    for(Contact con:trigger.new){
        List<Contact> a = [Select Id,Name,Email from Contact where Email=:con.Email];
        if(a.size()>0){
            con.Email.addError('Email already Exist');
        }
           
        }
    

}