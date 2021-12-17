trigger ValidateContactFields on Contact (before insert,before update) {
    if((trigger.isInsert || trigger.isUpdate) && trigger.isBefore){
        for(Contact con:trigger.new){
            if( con.Phone==null||con.phone==''){
                con.addError('please enter the Phone number');
            } else if( con.Email==null||con.Email==''){
                con.addError('please enter the Email');
        }else if( con.Fax==null||con.Fax==''){
                con.addError('please enter the Fax');
                    }
            }

        }            
}