@IsTest
public class AccountProcessorTest {
    @IsTest
    private static void testCountContacts(){
        Account newAccount1=new Account(Name='Test Account1');
        Account newAccount2=new Account(Name='Test Account2');
        insert newAccount1;
        insert newAccount2;
        
        Contact newContact1=new Contact(firstname='John', LastName='Doe', AccountId=newAccount1.Id);
        insert newContact1;
        
        Contact newContact2=new Contact(firstname='Jane', LastName='Doe', AccountId=newAccount1.Id);
        insert newContact2;
        
        List<Id> accountIds=new List<Id>();
        accountIds.add(newAccount1.Id);
        accountIds.add(newAccount2.Id);
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();
    }
}