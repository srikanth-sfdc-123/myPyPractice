trigger Phoneupdate on Account (before insert) {
    for(Account a:trigger.new){
        if(a.industry == 'Banking'){
            a.Phone = '9876546';
        }
    }
}