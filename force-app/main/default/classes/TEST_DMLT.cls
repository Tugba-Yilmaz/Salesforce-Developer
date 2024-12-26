@isTest
public class TEST_DMLT {
    // bir classta birden fazla Test.startStop() olabilir. bir method içinde YALNIZCA bir kez kullanılabilir.
   /*@testSetup 
    public static void setup(){
        List<Account> factoryAccs = New List<Account>();
        
        for(Integer num=101; num<=200; num++){
            Account newAcc = New Account(Name = 'Factory Acc ' +num);
            factoryAccs.add(newAcc);
        }
        
        insert factoryAccs;
       
    }*/
@isTest
    public static void startstopLesson(){	//Method is not visible: String DMLT.devName(String)
        List<String> strList = New List<String>();
        
        for(Integer num=1;num<=200;num++){
            strList.add('START STOP TEST '+num);
        }
        System.debug('..................10 dml.................');
        
        System.debug('getLimitDmlStatements ' +Limits.getLimitDmlStatements());  // Toplam DML Sayısı
        for(Integer num=1;num<=10;num++){
            System.debug('..................DML Limit: '+ (Limits.getLimitDmlStatements()-Limits.getDmlStatements()));
            Contact con = New Contact(FirstName = 'TEST', LastName='Governor Test');
            insert con;
        }
        
        System.debug('getLimitDmlStatements ' +Limits.getLimitDmlStatements());
        
        System.debug('..................Test.startTest() 20 dml.................');
        Test.startTest(); //yeni bir governor limit ayarlıyor. limit içinde limit.
        System.debug('..................DML Limit: '+ (Limits.getLimitDmlStatements()-Limits.getDmlStatements()));
        for(Integer num=1;num<=20;num++){
           DMLT.createAccount(strList);
            System.debug('..................DML Limit: '+ (Limits.getLimitDmlStatements()-Limits.getDmlStatements()));
        }
        Test.stopTest();
        System.debug(' Test.stopTest();  ----');
         System.debug('DML Limit : ' + (Limits.getLimitDmlStatements()-Limits.getDmlStatements()));
        
        
          System.debug('10 DML ----');
        System.debug('DML Limit : ' + (Limits.getLimitDmlStatements()-Limits.getDmlStatements()));
        for(Integer num=1;num<=10;num++){
            
            Contact con = New Contact(FirstName='TEST', LastName='Governor Test');
            insert con;
            System.debug('DML Limit : ' + (Limits.getLimitDmlStatements()-Limits.getDmlStatements()));
        }
    }
        
     @isTest
    public static void testDevName(){
       String actual = DMLT.devName('test');
        System.assertEquals('test10', actual);        
    }
    
    @isTest
    public static void createAcc_Single(){  // Single Test.
        List<String> accNameList = New List<String>();
        accNameList.add('TEST ACC 1');
        
        
        DMLT.createAccount(accNameList);  // 1 Acc Test CRM
        
        // Test Evaluate.
        // 
        System.debug('Query : ' +Limits.getQueries());
        System.debug('Query : ' +Limits.getLimitQueries());
        
        List<Account> accList = [SELECT Id, Name FROM Account];
        
        System.debug('Query : ' +(Limits.getLimitQueries()-Limits.getQueries()));
       
        System.assertEquals(1,accList.size());
        System.assertEquals(true,accList[0].Name.contains('TEST ACC'));

    }
    
    @isTest
    public static void createAcc_BULK(){  // Bulk Test.
        List<String> accNameList = New List<String>();
        
        for(Integer num=1;num<=50;num++){
            accNameList.add('TEST ACC '+num);
        }
        
        
        DMLT.createAccount(accNameList);  // 3 Acc Test CRM
        
        // Test Evaluate.
        List<Account> accList = [SELECT Id, Name FROM Account];
        
        System.assertEquals(50,accList.size());
        System.assertEquals(true,accList[0].Name.contains('TEST ACC'));
        
    }
    
    @isTest
    public static void createAcc_Negative(){  // Negative Test.
        List<String> accNameList = New List<String>();
        accNameList.add('');
        
        DMLT.createAccount(accNameList);
        
        List<Account> testAcc = [SELECT Id,Name FROM Account];
        System.assertEquals(0, testAcc.size());
        
    }
    
    
    
    @isTest
    public static void createAcc_RestictedUser(){    // RestictedUser Test.
        
        System.debug('createAcc_RestictedUser ');
        String uniqueUserName = 'c5testuser' + DateTime.now().getTime() + '@minimumaccess.com';
        Profile minAccessProfile = [SELECT Id,Name FROM Profile WHERE Name='Minimum Access - Salesforce' LIMIT 1];
        
        User minAccessUser = New User(
            Alias = 'standt',
            Email='standarduser@testorg.com',
            EmailEncodingKey='UTF-8', 
            LastName='Testing', 
            LanguageLocaleKey='en_US',
            LocaleSidKey='en_US', 
            ProfileId = minAccessProfile.Id,
            TimeZoneSidKey='America/Los_Angeles',
            UserName=uniqueUserName);
        
        System.runAs(minAccessUser) {
            // minimum access user Salesforce TEST Login .....
            System.debug('Restricted User Data...........');
            System.debug('Current User: ' + UserInfo.getUserName());
            System.debug('Current Profile: ' + UserInfo.getProfileId());
            
            List<String> accNameList = New List<String>();
            accNameList.add('TEST ACC 1');
            
            
            DMLT.createAccount(accNameList);  // 1 Acc Test CRM
            
        }   // log out....   
        
             // Test Evaluate.
        List<Account> accList = [SELECT Id, Name FROM Account];
        
        System.assertEquals(0,accList.size());
   
    }
    
}