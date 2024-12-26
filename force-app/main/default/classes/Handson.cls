public class Handson {
    
    public  void AccInsert(){
        List<Account> newAcc=New List<Account>();
        
        Account acc1=New Account (Name='TEST1');
        Account acc2=New Account (Name='TEST2');
        Account acc3=New Account (Name='TEST3');
        newAcc.add(acc1);
        newAcc.add(acc2);
        newAcc.add(acc3);
        
        insert newAcc;
        
    }
    public void AccUpdate(){
        List<Account> accs=[SELECT Id,Name FROM Account WHERE Name LIKE '%TEST%'];
        List<Account> upAcc=New List<Account>();
        for(Account a:accs){
            a.Name='TEST Updated';
            upAcc.add(a);
            
        }
        update upAcc;
    }
    
    public void AccDelete(){
        List<Account> accDel=[SELECT Id,Name FROM Account WHERE Name LIKE '%TEST%'];
        delete accDel;
        
        
    }
    public void AccUndelete(){
        List<Account> accUndelete=[SELECT Id,Name FROM Account WHERE Name LIKE '%TEST%' ALL ROWS];
        undelete accUndelete;
        
        
    }
        
        
    public void accUpsert(){
        List<Account> accUpsert=[SELECT Id,Name FROM Account WHERE Name LIKE '%TEST%'];
        for(Account u:accUpsert){
            u.Name='TTtt';
            
        }
        Account newAcc=new Account(name='Handson');
        accUpsert.add(newAcc);
        upsert accUpsert;
    }
    
    
    
    

    
    
    
    
}