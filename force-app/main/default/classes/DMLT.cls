public with sharing class DMLT {//...System Mode...    >>       USER MODE.... (FieldLevelSecurty + Sharing Rule)

    public static void createAccount(List<String> accNameList){
        List<Account> multiAcc=New List<Account>();
        for(String accName:accNameList){
            Account SingleAcc=New Account(Name=accName);
            multiAcc.add(SingleAcc);
        }
       
        try{
            if(Schema.SObjectType.Account.fields.Name.isCreateable()){  // DML FLS enforce
                //create new contact
                 insert multiAcc; 
            }
            
        
        }catch(Exception ex){  //DML FLSye adapte etmemiz lazim
          System.debug('ERROR :');
          System.debug(ex.getMessage());
        }
    }
    @testvisible
    private static String devName(String name){
        String x=name;
        integer y=10;
        String totalname=x+y;
        return totalname;
    }
}