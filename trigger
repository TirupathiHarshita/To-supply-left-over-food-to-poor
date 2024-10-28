trigger DropOffTrigger on Drop_Off_point__c (before insert) {

    for(Drop_Off_point__c Drop : Trigger.new){

        Drop.Distance__c = Drop.distance_calculation__c;

    }

}

