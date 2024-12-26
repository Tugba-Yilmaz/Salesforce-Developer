@isTest
public class AnimalLocatorTest {
 
    @isTest static  void AnimalLocatorTest1() {
      
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string actual=AnimalLocator.getAnimalNameById(1);
        string expected='moose';
        System.assertEqualS(actual,expected);
    } 
    
    
    
    @isTest
    static void testPostCallout() {

    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
  
    HttpResponse response = AnimalLocator.makePostCallout();

    String contentType = response.getHeader('Content-Type');
    System.assert(contentType == 'application/json');
    String actualValue = response.getBody();
    System.debug(response.getBody());
    String expectedValue = '{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}';
    System.assertEquals(expectedValue, actualValue);
    System.assertEquals(200, response.getStatusCode());
}
}