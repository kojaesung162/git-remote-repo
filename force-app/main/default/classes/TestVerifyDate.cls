@IsTest
public class TestVerifyDate {
    @IsTest
    private static void test(){
        Date testDate1 = Date.newInstance(2025, 1, 27);
        Date testDate2 = Date.newInstance(2025, 2, 1);
        Date testDate3 = Date.newInstance(2025, 4, 1);
        testDate1=VerifyDate.CheckDates(testDate1,testDate2);
        testDate1=VerifyDate.CheckDates(testDate1,testDate3);
    }
}