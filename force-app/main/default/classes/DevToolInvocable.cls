public class DevToolInvocable {

 
    @invocablemethod
    public static List<Response> execute(List<Request> flowRequest){
        System.debug(flowRequest);
        System.debug(flowRequest[0]);
     Integer howMany=flowRequest[0].numofAcc;
     String   accPrefix= flowRequest[0].prefix;
        
        List<Account> newAccList=new List<Account>();
        
        for(Integer num=1;num<=howMany;num++){
            Account newAcc=New Account(Name=accPrefix+' '+num);
            newAccList.add(newAcc);
        }
       
        insert newAccList;
        
        Response res=New Response();
        res.createdAccounts=newAccList;
        
        List<Response> flowResponse=New   List<Response>();
        flowResponse.add(res);
        return flowResponse;
    }
    public class Request{//inner class 
      @invocableVariable(label='How many Account Do you Want to Create' description='Number of Created Account') 
          public Integer numofAcc;
     @invocableVariable(label='Account Prefix Name' description='Account Prefix') 
          public String prefix;
    }
    public class Response{//inner class
       @invocableVariable(label='Account Collection' description='Account Collection') 
          public List<Account> createdAccounts;
        
    }

}