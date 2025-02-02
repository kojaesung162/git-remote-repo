public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer n,String s){
		List<Contact> rlist=new List<Contact>();
        for(Integer i=0; i<n; i++){
            Contact c=new Contact(FirstName='Test '+i,LastName=s);
            rlist.add(c);
        }
        return rlist;
    }
}