trigger ExampleTrigger on Contact (after insert, after delete) {
    if (Trigger.isInsert){
        Integer recordCount = Trigger.New.size();
        EmailManager.sendMail('hywyh117@gmail.com', 'Traildhead Trigger Tutorial',
                              recordCount + ' contacts were inserted.');
        
    }
    else if (Trigger.isDelete){
        
    }
}