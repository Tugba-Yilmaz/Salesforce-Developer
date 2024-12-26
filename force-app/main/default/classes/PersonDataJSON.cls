public class PersonDataJSON {
    //method
    public static void readData(String jsonData){
        //System.debug(jsonData);
      List<userData> userList=(list<userData>)JSON.deserialize(jsonData,list<userData>.class); 
        //jsondatadan gelen verileri liste seklinde okuyabilmek icin liste yaptik
       /* system.debug(userList[0]);//kisi ile ilgili tum bilgileri veriri
        system.debug(userList[0].firstName);
        system.debug(userList[0].lastName);
         system.debug(userList[0].Phone);
         system.debug(userList[0].email);
         system.debug(userList[0].id);
        */
        for(userData udloop:userList){
         system.debug(udloop.firstName);
         system.debug(udloop.lastName);
         system.debug(udloop.Phone);
         system.debug(udloop.email);
         system.debug(udloop.id);
         system.debug('=====================');
        }//tum datayi liste halinde gosteriyor
        
    }
    //inner class
  //elimize gelen data bunun gibi birden fazla old icin bunu ustte bos liste yazip oraya koyduk
    public class userData{
        public string firstName;
        public string lastName;
        public string Phone;
        public string email;
        public string id;
    }

}
/* userData ud=new userData();
        ud.firstName='tugba';
        ud.lastName='yilmaz';
        ud.id='333';
        ud.Phone='66879879';
        ud.email='ud.test@.com';
          system.debug(ud);*/