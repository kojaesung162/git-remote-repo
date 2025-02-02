public class ContactSearch {
    public static List<Contact> searchForContacts(String first, String second){
        List<Contact> result=[select Id, Name from Contact 
                              				where LastName=:first and MailingPostalCode =:second];
        return result;
    }
}