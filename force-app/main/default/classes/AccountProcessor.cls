public class AccountProcessor {
    @future
    public static void countContacts(List<Id> ids){
        List<Account> accs = [SELECT Id, Name FROM Account WHERE Id IN :ids];
        List<Contact> cts = [SELECT AccountId FROM Contact WHERE AccountId IN :ids];
        
        // AccountId -> Contact 수의 맵을 만듬
        Map<Id, Integer> contactCountMap = new Map<Id, Integer>();
        
        for (Contact ct : cts) {
            if (contactCountMap.containsKey(ct.AccountId)) {
                contactCountMap.put(ct.AccountId, contactCountMap.get(ct.AccountId) + 1);
            } else {
                contactCountMap.put(ct.AccountId, 1);
            }
        }
        
        // Account에 대해 Number_Of_Contacts__c 필드를 업데이트
        for (Account acc : accs) {
            if (contactCountMap.containsKey(acc.Id)) {
                acc.Number_Of_Contacts__c = contactCountMap.get(acc.Id);
            } else {
                acc.Number_Of_Contacts__c = 0;
            }
        }
        
        // 업데이트된 Account 저장
        update accs;
    }
}