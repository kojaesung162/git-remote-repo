public class StringListTest {
    public static List<String> generateStringList(Integer n){
        List<String> arr=new List<String>();
        for(Integer i=0; i<n; i++){
            arr.add('Test '+i);
        }
        return arr;
    }
}