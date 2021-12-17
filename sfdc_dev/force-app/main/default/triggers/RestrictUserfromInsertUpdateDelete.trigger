trigger RestrictUserfromInsertUpdateDelete on Account (before insert) {
    user u = [select id,name from user where username='sfdcvamika@gmail.com'];
    if(u.Id==userinfo.getUserId()){
        if(trigger.isDelete){
            for(Account a:trigger.old){
                a.addError('cannot delete record');
            }
        } 
        if(trigger.isUpdate){
            for(Account b:trigger.new){
               b.addError('cannot update record');
            }
        }  if(trigger.isInsert){
            for(Account c:trigger.new){
               c.addError('cannot Insert record');
            }
        }
                 
    }

}