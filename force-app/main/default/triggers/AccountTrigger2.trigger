trigger AccountTrigger2 on Account (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.CreateAccounts(trigger.new);
    }
}