public class AnimalLocator {
   
    public static String  getAnimalNameById(Integer x){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+x);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
     
     
         
            Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            
              Map<String, Object> animal = (Map<String, Object>)results.get('animal');
           
            System.debug('name:'+string.valueof(animal.get('name')));
          return string.valueOf(animal.get('name'));
       
    
    }
     public static HttpResponse makePostCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('The method must call https://th-apex-http-callout.herokuapp.com/animals/Id');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if(response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }
        return response;
    }        

}