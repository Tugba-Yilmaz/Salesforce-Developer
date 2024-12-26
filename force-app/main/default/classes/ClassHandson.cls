public class ClassHandson {

    public void newOpp(){
        List<Opportunity> oppList=New List<Opportunity>();
        for(Integer i=1;i<=5;i++){
            Opportunity opp=new Opportunity();
            opp.Name='Triforcia S'+i;
            opp.CloseDate=system.today();
            opp.StageName='Prospecting';
            
            oppList.add(opp);
            
        }
        
        insert oppList;
        
    }
    
    public void updatePhone(){
        List<Account> accList=New List<Account>();
          accList=[SELECt Id,Phone from Account WHERE CreatedDate=today];
        for(Account accloop:accList ){
            accloop.Phone='74658456284';
           
        }
        update accList;
   
    }
    public void updateAccount(){
        
        List<Account> accList=[SELECT Id, Name,Phone FROM Account WHERE Phone='74658456284'];
        
        for(Account acc:accList){
            acc.Phone='111111111';
        }
        for(Integer x=1;x<5;x++){
            Account acc=New Account();
            acc.Name='Upserted handsonnn';
            acc.Phone='5555555555555';
            accList.add(acc);
            
        }
        upsert accList;
    }
    
    
}