public class AccountUtils {
    public static List<Account> accountsByState(String st){
        
        List<Account> acclist=[SELECT ID,Name FROM Account WHERE BillingState=:st];
        return acclist;
    }
}