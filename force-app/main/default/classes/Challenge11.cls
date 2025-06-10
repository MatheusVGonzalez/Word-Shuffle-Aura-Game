public class Challenge11 {
    public static List<Account> acc(List<Account> inserted){
        insert inserted;
        return inserted;
    }
    public static Account insertAccount(Account inserted){ //add
        insert inserted;
        return inserted;
    }
    
    public static List<Account> getAccounts(){
        List<Account> acc = [SELECT Name, Rating FROM Account];
        return acc;
    }
    
    public static void printAccount(){
        List<Account> acc = getAccounts();
        for(Account rep : acc){
        	System.debug('Name Account: ' +rep.Name + ' Rating: ' +rep.Rating);   
        }
    }
    
}