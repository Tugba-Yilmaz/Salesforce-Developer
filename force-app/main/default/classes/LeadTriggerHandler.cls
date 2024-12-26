public class LeadTriggerHandler {
    public static void createTaskforNoPhoneLeads(Map<Id,Lead> triggerNewMap){
        Set<Id> TriggerLeadIds = triggerNewMap.keyset();
        //bunu yazarak duplicasyonu engellemis oluyoruz
        
        List<Lead> triggerNew = triggerNewMap.values();
       	List<Task> multiTask = New List<Task>();
        
        //lead.id -Task
        Map<Id,Id> leadtoTaskMap = New Map<Id,Id>();
        List<Task> createdTasks = [SELECT Id,Subject, Whoid, ActivityDate FROM Task WHERE Whoid=:TriggerLeadIds ]; 
        //trigger da trigger i tetikleyen hangi leadler var ise onlara olusan tasklari filtrele...
        
        if(!createdTasks.isEmpty()){
            for(Task task:createdTasks){
                leadtoTaskMap.put(task.Whoid,task.id);
                System.debug(leadtoTaskMap);
            }
        }
        String createdtaskid='NO ID';
        for(Lead record:triggerNew){
           if(record.phone==null){
                // SOQL yerine MAP 'dan sorgulama yapıyorum.
                if(!createdTasks.isEmpty()){
                    createdtaskid=leadtoTaskMap.get(record.id);  
                }    
                if(createdtaskid=='NO ID' || createdtaskid==null){
                     Task task = New Task();
                    task.Subject=' No Phone ' + record.FirstName + ' ' + record.LastName;
                    task.WhoId = record.id;   // WhoId lookup field. ( user Name  / backend apex : Lookup(Contact,Lead)  ID)
                    task.OwnerId = record.OwnerId;
                    task.Status = 'Not Started';
                    task.ActivityDate = date.today()+5;
                    task.IsReminderSet = true;
                    task.ReminderDateTime = date.today();
                     multiTask.add(task);
                }                    
            }
        }
        insert multiTask;
    }   // end of method createTaskforNoPhoneLeads
}