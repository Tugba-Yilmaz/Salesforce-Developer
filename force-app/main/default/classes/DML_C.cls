/**
 * @description       : 
 * @author            : Tugba Yilmaz
 * @group             : 
 * @last modified on  : 02-20-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class DML_C {
    public static String InsertAccount(String isim , String tel){//require olan fieldlari burda vermeliyiz(name reqire )
        Account a = new Account();
        System.debug('Merhaba VS Code');
        System.debug('Merhaba Vs code deneme org');
        a.Name = isim;
        a.Phone = tel;
        Insert a;
        if(a.Id !=null){
            return 'Kayit eklendi';  
        }else{
            return 'Kayit Basarisiz';
        }
    }
    
    public static void MultiInsertAccount(String d, Integer s){
        List<Account> x=new List<Account>();
        
        for(Integer a=1; a<=s; a++){
            Account y=New Account();
            y.Name=d+a;
            x.add(y); 
        }
        Insert x;
    }
    public static void DeleteAccount(String n){
        List<Account> acc=[SELECT Id,Name,Phone from Account];
        List<Account> emptyaccList=new List<Account>();
        for(Account i:acc){
            if(i.Name==n){
                emptyaccList.add(i);
            }
        }//for bitis
        delete emptyaccList;
    }
    
}