@isTest
public class TEST_RecordTriggerFlow {

    @isTest 
    public static void testAutoLaunchTriggerFlow(){
        //flow API Name  CREATE_ACC_FLOW
        Map<String,Object> inputs=new map<String,Object>();
        
        Flow.Interview.CREATE_ACC_FLOW  accFlow=new flow.Interview.CREATE_ACC_FLOW(inputs);
        accFlow.start();   //CREATE_ACC_FLOW flow is started
        List<Account> acclist=[SELECt Id,Name FROm Account];
        System.assertEquals(1, acclist.size());
        
        System.assertEquals('AUTO LAUNCH FLOW',acclist[0].Name);
    }
    
    
    
    @isTest
    public static void testTriggerAcc(){
        
        Account testAccount=new Account(Name= 'User Record Trigger Flow2');
        insert testAccount;
        Opportunity[] opportunities=[SELECT Id,Name,CloseDate FROm Opportunity WHERE AccountId=:testAccount.Id];
        System.assertEquals(1, opportunities.size());
        System.assertEquals('Welcome Op :' +testAccount.Name,opportunities[0].Name);
        System.assertEquals(Date.today()+10, opportunities[0].Closedate);
    }
    
}