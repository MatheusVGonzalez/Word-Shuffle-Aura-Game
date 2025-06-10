public class GovernorLimits {

    public static void updateProfile(List<Id> oppIds){

        Opportunity opps = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id IN: oppIds];
        for(Id oppId : oppIds){

            if(opps.Amount < 10000){
                opps.Profile__c = 'Low';
            }else if(opps.Amount >= 10000 && opps.Amount <= 50000){
                opps.Profile__c = 'Medium';
            }else if(opps.Amount > 50000){
                opps.Profile__c = 'High';
            }
        }
        update opps;

    }
}   