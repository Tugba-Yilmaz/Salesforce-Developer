public class calcT {

    public static Integer sum(Integer x, integer y){
        return x+y;
    }
     public static Integer sub(Integer x, integer y){
        return x-y;
    }
     public static Integer mul(Integer x, integer y){
        return x*y;
    }
     public static Decimal div(Decimal x, Decimal y){
         Decimal result=0;
         try{
           result=x/y;  
         }catch(Exception e){
           System.debug('ERROR');
           System.debug(e.getMessage());  
         }
         
        return result;
    }
}