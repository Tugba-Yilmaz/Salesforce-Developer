public class dummyAcc {
                          //account Name, Contact Number ,Opportunity Number
    public static void createAcc(String AccName, Integer contNum, Integer OpNum){
        Account newAcc=new Account(Name=AccName);
        insert newAcc;
        
        List<Contact> multiContact=new list<Contact>();
        List<Opportunity> multiOpportunity=New List<Opportunity>();
        
        for(integer num=1;num<=contNum;num++){
            Contact newCont=New Contact(FirstName=AccName+' '+num,LastName=AccName+' ',accountid=newAcc.Id);
            multiContact.add(newCont);
        }
        insert multiContact;
        
        for(Integer num=1;num<=OpNum;num++){
            Opportunity newOp=new Opportunity(Name=AccName +' '+num,
                                              AccountId=newAcc.Id,
                                              CloseDate=Date.today()+5,
                                              StageName='Prospecting');
            multiOpportunity.add(newOp);
        }
        insert multiOpportunity;
    }
}