public class AccountHandler {
    public static Account insertNewAccount(String s){
        Account acc=new Account(Name=s);
        try{
            insert acc;
        }
        catch(DmlException e){
            return null;
        }
        return acc;
        
    }
}