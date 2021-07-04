/*
 * public class ContactSearch {
    public static Contact searchForContacts(String inputLastName, String inputMailingPostalCode){
        Contacts[] result=[SELECT ID, Name FROM Contacts WHERE (LastName == inputLastName AND MailingPostalCode == inputMailingPostalCode)];
        List resultList = new List();
        Integer i = 0;
        for (Contacts[] finalList : [result]){
            finalList = result(i) + finalList;
        }    
    }
}
*/

public class ContactSearch {
    public static List<Contact> searchForContacts(String lastname, String Postalcode){
        List<Contact> con = [SELECT ID, Name FROM contact WHERE LastName = :lastname AND MailingPostalCode =  :Postalcode];
        return con;
    }
    }