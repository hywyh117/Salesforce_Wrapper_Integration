trigger OrderEventTrigger on Order_Event__e (after insert) {
// Trigger for listening to Cloud_News events.

    // List to hold all cases to be created.
    List<Task> tasks = new List<Task>();
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            Task ts = new Task();
            ts.Priority = 'Medium';
            ts.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            ts.OwnerId = event.CreatedById;
            tasks.add(ts);
        }
   }
    // Insert all cases corresponding to events received.
    insert tasks;

}