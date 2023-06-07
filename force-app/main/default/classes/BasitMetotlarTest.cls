@isTest
public class BasitMetotlarTest {
   @isTest
   private static void hosgeldinTest() {
      test.startTest();
      BasitMetotlar bm = new BasitMetotlar();
      bm.hosgeldin();
      test.stopTest();
    
   }
    @isTest
    private static void hosgeldinIsimTest() {
       test.startTest();
        string msg = BasitMetotlar.hosgeldinIsim('Aysenur');
        
      test.stopTest();
      system.assertEquals ('Hosgeldin Aysenur', msg);
         
    }
    @isTest
     Private static void toplamaTest(){
      test.startTest();
       integer tpl = BasitMetotlar.toplama (11,22);
      test.stopTest();
      system.assertEquals(33, tpl);
     }
     @isTest
   private static void ifNumbersTest(){
      test.startTest();
        BasitMetotlar.ifNumbers(11,5);
        BasitMetotlar.ifNumbers(25,45);
      test.stopTest();
   }
   }