@isTest
public class AccountTriggerTest {
    @isTest
    static void TestCreate200Records(){
        List<Account> accts=new List<Account>();
        for(Integer i=0; i<200; i++){
            Account acct=new Account(Name='Test Account'+1,billingstate='CA');
            accts.add(acct);
        }
        Test.startTest();
        insert accts;
        Test.stopTest();
        System.assertEquals(200,[select Count() from Account where shippingstate='CA']);
    }
}