public class NewBorn {
    //variable
    public String babyName ='John Doe';
    public Decimal babyweigth =1.25;
    public Decimal babyHeigth =0.79;
    public String babyGender ='Male';
    public String babyEyeColur ='Brown';
    public Boolean isBabyCute =True;
    
   Final public Boolean ISBABYALIVE =True;
    //method(function)
     
    public void displayBabyData(){
        System.debug('My baby\'s name is '+ babyName );
        System.debug('My baby\'s weigth is ' + babyweigth);
        System.debug('My baby\'s heigth is ' + babyHeigth);
        
    }
    public void displayAdditionalData(){
        System.debug('My baby\'s geneder is '+babyGender);
        System.debug('My baby\'s eye color is '+babyEyeColur);
         
        if (isBabyCute==true){
            System.debug('My baby is cute');
        }else{
            System.debug('My baby is healty');
        }
        
        
        
    }
    
    
    
}