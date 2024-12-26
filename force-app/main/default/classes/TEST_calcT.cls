@isTest
public class TEST_calcT {
  //sum,sub,mul,div
    @isTest
    public static void sumTest1(){
        Integer actual=calcT.sum(10,20);
        System.assertEquals(30, actual);
    }
        @isTest
    public static void sumTest2(){
        Integer actual=calcT.sum(10,0);
        System.assertEquals(10, actual);
    }
        @isTest
    public static void sumTest3(){
        Integer actual=calcT.sum(10,-10);
        System.assertEquals(0, actual);
    }
     @isTest
    public static void subTest1(){
        Integer actual=calcT.sub(10,20);
        System.assertEquals(-10, actual);
    }
        @isTest
    public static void subTest2(){
        Integer actual=calcT.sub(10,0);
        System.assertEquals(10, actual);
    }
        @isTest
    public static void subTest3(){
        Integer actual=calcT.sub(10,-10);
        System.assertEquals(20, actual);
    }
      @isTest
    public static void mulTest1(){
        Integer actual=calcT.mul(10,20);
        System.assertEquals(200, actual);
    }
        @isTest
    public static void mulTest2(){
        Integer actual=calcT.mul(10,0);
        System.assertEquals(0, actual);
    }
        @isTest
    public static void mulTest3(){
        Integer actual=calcT.mul(10,-10);
        System.assertEquals(-100, actual);
    }
      @isTest
    public static void divTest1(){
        Decimal actual=calcT.div(10,20);
        System.assertEquals(0.5, actual);
    }
        @isTest
    public static void divTest2(){
        Decimal actual=calcT.div(10,0);
        System.assertEquals(0, actual);
    }
        @isTest
    public static void divTest3(){
        Decimal actual=calcT.div(10,-10);
        System.assertEquals(-1, actual);
    }
}