@IsTest
public class TestRestrictContactByName {
    @IsTest
    private static void test(){
        Contact testC=new Contact(LastName='INVALIDNAME');
        Test.startTest();
        Database.SaveResult result=Database.insert(testC,false);
        Test.stopTest();
    }
}