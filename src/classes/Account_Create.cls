public class Account_Create {
    @AuraEnabled
    /* testting */
    public static String create(Account acc){
        String result;
        try{
            insert acc;
            result='record inserted successfully with Id:' +acc.Id;
            
        } catch(Exception e){
            result = 'Insertion failed' +e.getMessage();
        }
        return result;
        
    }

}