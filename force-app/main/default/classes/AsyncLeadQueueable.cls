public class AsyncLeadQueueable implements Queueable ,Database.AllowsCallouts{//Database.AllowsCalloutsyazarak callout a izin vermis oluyoruz
    
    //leadListi ustteki methoddakini alttaki methodda kullanabilmek icin bu sekilde en distaki classin icinde list tanimliyoruz
   public  List<Lead> leadList=new List<Lead>();
    
    public set<Id> leadIdSet=new set<Id>();
    
    //trigger new den gelen datayi icine atmak icin ayni isimde bir constractor method olusturuyoruz
    public AsyncLeadQueueable(List<Lead> leadList){
     this.leadList=leadList;
    }

    public  void execute(QueueableContext QC){
        
        
        //burda direk class daki kastedildigi icin this kullanmiyorz
        for(Lead record:leadList){
           record.LeadSource='Web';
            
        }//for end
        update LeadList;
    }
}