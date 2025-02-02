public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String s){
        List<List<sObject>> result=[find :s IN ALL FIELDS RETURNING Contact(Name), Lead(Name)];
        return result;
    }
}