public class zoomAPI {

    
    public static void getUsers(){
        http http = New http();
        httpRequest req = new httpRequest();
        req.setEndpoint('CALLOUT:zoom/users');
        req.setMethod('GET');
        
        system.debug(req);
        
        httpResponse res = http.send(req);
        system.debug(res.getBody());
        
        zoomdata.ZoomUser zoomuser = New zoomdata.ZoomUser();
        
        zoomuser=zoomdata.parse(res.getBody());
        
        system.debug(zoomuser.users[0].first_name);
        system.debug(zoomuser.users[0].id);
        
    }
}