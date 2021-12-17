trigger RecordLimitReached on Account (before insert, before update) {
Integer count =0;
    List<Account> a = [select id,name from Account where createdDate=Today or lastmodifiedDate=Today];
    for(Account ac:trigger.new){
        count=a.size();
        if(count>3){
            ac.addError('Reached Limit Today');
        }
    }
}