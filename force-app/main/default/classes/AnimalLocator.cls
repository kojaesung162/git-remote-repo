public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer n){
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+n);
        request.setMethod('GET');
        Map<String, Object> result=new Map<String,Object>();
        HttpResponse response=http.send(request);
        if(response.getStatusCode()==200){
            Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            result=(Map<String, Object>)results.get('animal');
        }
        return (String)result.get('name');
    }
}