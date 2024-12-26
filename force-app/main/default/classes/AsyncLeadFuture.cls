public class AsyncLeadFuture {

    @future
    public static void updateLeadSource(Set<Id> leadIdList){   // AsyncLeadFuture.updateLeadSource(leadId);
        
        List<Lead> leadList = [SELECT id,firstName,LastName, LeadSource FROM Lead WHERE Id=:leadIdList];
        
        for(Lead record:leadList){
            if(record.LeadSource==null){
                record.LeadSource='Other';
            }
        }
        
        update leadList;
    }
    @future(callout=true)  //triggerde after insert olmasi gerek.before ile olmuyor
    public static void retrieveLeadDetails(Set<Id> leadList){
        //intelligence API Lead data ...eposta,phone
        //ERP:
      
        
    }
}