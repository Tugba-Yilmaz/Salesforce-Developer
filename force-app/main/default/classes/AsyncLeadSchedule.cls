public class AsyncLeadSchedule implements Schedulable {
    
    public void execute(SchedulableContext SC){
        List<Lead> multiLead=[SELECT Id,firstName,LastName,Company,Phone,Email FROM Lead];
        
        for(Lead record:multiLead){
            record.FirstName=record.FirstName.toUpperCase();
            
        }
        
        update multiLead;
    }

}