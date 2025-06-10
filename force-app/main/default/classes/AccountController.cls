public class AccountController {
    public static void updateAvgCaseResolutionDays(List<Id> AccountIds){
		Map<Id, Integer> accountTotalCaseMap = new Map<Id, Integer>();
		Map<Id, Integer> accountTotalCaseDaysMap = new Map<Id, Integer>();
        
        Integer totalDays = 0, totalCases = 0;
        for(Case caseObj : [SELECT Id, CreatedDate, ClosedDate, AccountId
                             FROM Case
                             WHERE IsClosed=true
                         		AND AccountId IN :accountIds]){
			if(! accountTotalCaseMap.containsKey(caseObj.AccountId)){
                
            }
            // increase number of cases
            totalCases++;
            // get duration in days and add it to totalDays
            totalDays += caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date());
        }
        Decimal resolutionDays = totalDays/totalCases;
        // update account object
        Account acc = new Account(Avg_Case_Resolution_Days__c = resolutionDays);
        update acc;
    }
}