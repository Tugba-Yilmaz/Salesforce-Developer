@isTest
public class AccLimittest {
    
    
 
    @isTest
    public static void NewAcc(){
        List<Account> limitAcc=New List<Account>();
        for(Integer i=0;i<=100;i++){
            Account singleAcc=new Account(Name='Deneme');
            limitAcc.add(singleAcc);
            
        }
        insert limitAcc;
        
        System.assertEquals(101,limitAcc.size());
    }
}