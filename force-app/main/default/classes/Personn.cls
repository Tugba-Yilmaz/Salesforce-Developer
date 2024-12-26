public class Personn {//altinda bircok class var -WRAPPER CLASS oldu

    // 1- Variable ( STATIC / NONSTATIC )
    // -----a -- Non Static
    private String name;
    private Integer age;
    private decimal sales=0;
    private PersonalTraining PT=new PersonalTraining();

    //------b ..   Static
    public static Decimal totalSales=0;

     //2==INNER CLASS-Wrapper Class(altinda baska class varsa wrapper deniyor)
    public class PersonalTraining{
        public List<School> schoolHistory=new List<School>();
         public List<proEdu> proEduHistory=new List<proEdu>();
    }
    //inner class
    public class School{
        public String name;
        public Date startDate;
        public Date endDate;
    }
    //inner Class
    public class proEdu{
        public String name;
        public String profession;
        public Boolean certificate;
    }
    
    
     // 3-  Method ( STATIC / NONSTATIC )
    
    public void setPT(String Name,Date StartDate,Date EndDate){
        School personSchool=new School();
        personSchool.name=Name;
        personSchool.startDate=StartDate;
        personSchool.endDate=EndDate;
        System.debug('SCHOOL : '+personSchool);
        
        PT.schoolHistory.add(personSchool);
        System.debug('PersonalTraining');
        System.debug(PT);
        System.debug(PT.schoolHistory);
        
        
    }
    
    public void setPT(String Name,String  Profession,Boolean Certificate){
        proEdu personproEdu=new proEdu();
        personproEdu.name=Name;
        personproEdu.profession=Profession;
        personproEdu.certificate=Certificate;
        System.debug('Pro Edu : '+personproEdu);
        
        PT.proEduHistory.add(personproEdu);
        System.debug('PersonalTraining');
        System.debug(PT);
        System.debug(PT.proEduHistory);
            
        
    }
    
    //Constructor Methods
    public Personn(String personName){
        name=personName;
         System.debug('Personn(String personName) constractor method is working');
    }

     /*polimorfizimden dolayi bir tane bos bir tane ici dolu constractor method tanimlayabiliyorum*/
    public Personn(){
        System.debug('Personn() constractor method is working');
    }
    
    //age
    public void setAge(Integer age){
        this.age=age;
    }
    public Integer getAge(){
        return age;
    }
    
    
    //Name
    public void setName(String name){
        //class name = method name
        this.name=name;
    }

    public String getName(){
        return name;
    }
     //sales
    public void setSales(decimal sale){
        sales+=sale;
        totalSales+=sale;
    }
    public decimal getSales(){
        return sales;
    }
    public void zeroSale(){
        totalSales-=sales;
        sales=0;
    }
    //Total sales personn. static method
    public static decimal getTotalSales(){
        return totalSales;
    }
    
   
}