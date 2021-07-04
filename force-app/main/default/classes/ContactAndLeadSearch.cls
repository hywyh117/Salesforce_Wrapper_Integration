public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String testname) {
       List<List<sObject>> searchList = [FIND :testname IN ALL FIELDS 
                                         RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName) ];
        return searchList;
    }
}