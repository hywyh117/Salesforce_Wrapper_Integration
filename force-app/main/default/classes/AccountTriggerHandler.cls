public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acctList){
        for (Account a:acctList){
            if (a.ShippingState != a.Billingstate){
                a.ShippingState = a.Billingstate;
            }
        }
    }
}