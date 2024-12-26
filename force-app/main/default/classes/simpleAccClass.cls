public class simpleAccClass {
    
    private static list<string> searchList=new List<string>();
    
    public static void setSearchList(string searchTerm){
        searchList.add(searchTerm);
    }
    
    public static void retrieveAccount(){
        
        list<Account> accList=[SELECT Id,Name,Type, Phone, Website, Industry, AnnualRevenue 
                               from Account
                              WHERE Industry =:searchList];//variable binding
        //variable binding ile soql injectiona karsi koruma saglar
        //list of string i binding ederek sorgu yaptirabiliriz
        System.debug(accList);
        
        for(Account loopAcc:accList){
            System.debug(loopAcc.Name+' '+loopAcc.Phone+' '+loopAcc.Industry);
        }
        
    }   
}