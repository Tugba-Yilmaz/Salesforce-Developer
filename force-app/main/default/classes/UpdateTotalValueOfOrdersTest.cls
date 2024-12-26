@isTest
public class UpdateTotalValueOfOrdersTest {
   
    static testMethod void testUpdateTotalValueOfOrders() {
  
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

      
        Opportunity testOpportunity = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Closed Won',
            Type = 'Order',
            Amount = 1000,
            AccountId = testAccount.Id,
            CloseDate=date.today()
        );
        insert testOpportunity;

        
        Account updatedAccount = [SELECT Total_Value_of_Order__c FROM Account WHERE Id = :testAccount.Id];

        
        System.assertEquals(1000, updatedAccount.Total_Value_of_Order__c);

       
        Opportunity secondOpportunity = new Opportunity(
            Name = 'Second Opportunity',
            StageName = 'Closed Won',
            Type = 'Order',
            Amount = 500,
            AccountId = testAccount.Id
        );
        insert secondOpportunity;

        updatedAccount = [SELECT Total_Value_of_Order__c FROM Account WHERE Id = :testAccount.Id];

        System.assertEquals(1500, updatedAccount.Total_Value_of_Order__c);
    }
}