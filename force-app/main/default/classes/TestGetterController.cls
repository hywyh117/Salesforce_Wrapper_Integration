public class TestGetterController {
    public String getName() {
        return 'TestGetterController';
    }
    
    public Account getAccount(){
        return [select id, name from Account
               where id = :ApexPages.currentPage().getParameters().get('id')];
    }

}