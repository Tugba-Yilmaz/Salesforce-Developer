public class MathInvocable {
 
    @invocablemethod
    public static List<Response> execute(List<Request> flowRequest){//flowa degerlerimi liste seklinde gonderiyorum.datanin toplu bir sekilde gelecegini dusunerek bu sekilde yaptik
        System.debug(flowRequest);//Request:[x=4, y=3
        System.debug(flowRequest[0]);
        System.debug('x Number : '+flowRequest[0].x);
        System.debug('y Number : '+flowRequest[0].y);
        
        Decimal x=flowRequest[0].x;
        Decimal y=flowRequest[0].y;
         Decimal sum=x + y;
         Decimal sub=x -y;
         Decimal mul=x * y;
         Decimal div=x / y;
     
        Response res= New Response();
        res.sum=sum;
        res.sub=sub;
        res.mul=mul;
        res.div=div;
        
        List<Response> flowResponse=new List<Response>();
        flowResponse.add(res);
        
        return flowResponse;  
    }
    public class Request{//inner class 
      @invocableVariable(label='x Data' description='Your x') 
          public Decimal x;
     @invocableVariable(label='y Data' description='Your y') 
          public Decimal y;
    }
    public class Response{//inner class
        @invocableVariable(label='Sum' description='result')   
          public Decimal sum;
        @invocableVariable(label='Sub' description='result') 
          public Decimal sub;
        @invocableVariable(label='Mul' description='result') 
          public Decimal mul;
        @invocableVariable(label='Div' description='result') 
          public Decimal div;
    }
}