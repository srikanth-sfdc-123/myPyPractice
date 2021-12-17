trigger PreventActiveAccountFromDelete on Account (before delete) {
    If(Trigger.isDelete && Trigger.isBefore){
        for(Account acc:trigger.old){
            if(acc.Active__c=='YES'){
                acc.addError('you can not delete an active record');
            }
        }
    }

}