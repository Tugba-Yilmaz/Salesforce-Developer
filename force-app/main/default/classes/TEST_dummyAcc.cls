@isTest
public class TEST_dummyAcc {
    @isTest
    public static void createAccTest1(){
        dummyAcc.createAcc('dummy Acc test',2,2);
        
        Account acc=[SELECT id,name From Account];
        List<Opportunity> oppList = [SELECT Id, Name FROM Opportunity];
        List<Contact> conList = [SELECT Id, Name FROM Contact];
        
        
        system.assertEquals('dummy Acc test', acc.Name);
        
        system.assertEquals(2, oppList.size());
        system.assertEquals(2, conList.size());
        
        
    }
    
    
}