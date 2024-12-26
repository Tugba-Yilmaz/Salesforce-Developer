@isTest
public class TEST_helloTClass {

    @isTest
    public static void helloTest1(){
        //helloTClass.hello
        //actual=xxx
        //expected='Hello Apex Test'
        //assert yap: actual=expected?
        
        String actual=helloTClass.hello();
        String expected='Hello apex Test';
        
        //System.assert(actual==expected);
        //System.assert(actual==expected,'Actual ile expected ayni degil.');
        
        System.assertEquals(expected,actual);
        
        //System.assertEquals(expected,actual,'Actual ile expected ayni degil.');
        //System.assertNotEquals(0,accList.size());//bisey biseye esit degilse bunu kullaniyoruz
        //Assert.areEqual(expected,actual);
    }
    
}