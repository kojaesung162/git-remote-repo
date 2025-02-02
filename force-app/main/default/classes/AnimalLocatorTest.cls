@IsTest
public with sharing class AnimalLocatorTest {
    @isTest 
    static  void testGetCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // Call method to test
        String result = AnimalLocator.getAnimalNameById(1);
        // Verify mock response is not null
        System.assertEquals('chicken', result);
    }
}