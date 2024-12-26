public class AsyncLeadBatch implements Database.Batchable<SOBJECT> {
    //start
    public Database.QueryLocator  start(Database.BatchableContext BC){ 
        //Database.QueryLocator PAGINATION ile kayitlari veriyor
        //sorgunun kursorunu veriyormus
        //200 kaydin sonunda lokasyonlari ile veren sorgu
        //start kismi sadece bir kez calisiyor
        return Database.getQueryLocator('SELECT Id,Name,FirstName,LastName, Phone,Email,Company FROM Lead');
    }
    //execute
    public void execute(Database.BatchableContext BC, List<Lead> scope){
        for(Lead record:scope){
            record.LastName=record.lastName.toUpperCase();
        }
        update scope;
    }
    //finish
    public  void finish(Database.BatchableContext BC){
        System.debug('Batch is finished');
        
    }
}