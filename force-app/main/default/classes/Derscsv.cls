public class Derscsv {
  public static String getCSV(String accName){
        StaticResource  accResource=[SELECT Body From StaticResource  WHERE Name= :accName];
        String csvAcc=accResource.Body.toString();
        return csvAcc;
    }
    public static List<Important_account__c>  saveAcc(String csvAcc){
        List<String> rows =csvAcc.split('\n');
        List<Important_account__c> accRecords =new List<Important_account__c>();
        String Header =rows.get(0);
        rows.remove(0);
        for(String row :rows ){
            List<String> columns=row.split(',');
            Important_account__c record = new Important_account__c();
            record.Name=columns[1];
            if(columns[2] !=''){
                record.Income__c = Decimal.valueOf(columns[2]);
                
            }
            if(!String.isBlank(columns[3])){
                record.discount__c = Double.valueOf(String.valueOf(columns[3]));
            }
            accRecords.add(record);
        }
        insert accRecords;
        return accRecords;
    }
    public static void uploadData(){
        String accUpdate = getCSV('testcsv');
        List<Important_account__c> accRecords =saveAcc (accUpdate);
    }
    
    
    
}