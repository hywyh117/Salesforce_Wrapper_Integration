public class AccountHandler {
  public static void insertAccount(Integer value) {
      Integer counter = 1;
      List<Account> addAccounts = new List<Account>();
      while (counter<=value) {
          Account store = new Account();
          store.Name = 'Acme Inc ' + counter;
          store.AccountNumber = 'A000' + counter;
          addAccounts.add(store);
          counter ++;
      }
      insert addAccounts;
  }
}