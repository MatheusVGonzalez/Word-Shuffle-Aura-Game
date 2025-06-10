public class CRUDTest {
    public static List<Account> acc(List<Account> toInsert){
        insert toInsert;
        return toInsert;
    } 
    
    public static Account insertAccount(Account toInsert){
        insert toInsert;
        return toInsert;
    }
    
    public static Account updateAccount(Id accountId, String newName, String newRating){
        Account acc = [SELECT Name, Phone, Rating FROM Account WHERE ID= :accountId];
        acc.Name = newName;
        acc.Rating = newRating;
        update acc;
        return acc;
    }
    
    public static Account deleteAccount(Id accountId){
        Account acc = [SELECT Name, Phone, Rating FROM Account WHERE ID=:accountId];
        delete acc;
        return acc;
    }
    
    public static List<Account> seeDeletedAccount(){
        List<Account> acc = [SELECT ID, Name, Phone, Rating FROM Account ALL ROWS];
        for(Account rep : acc){
        	System.debug('Name Deleted: ' +rep.Name);    
        }
        
        return acc;
    }
    
    public static Account undeletedAccount(Id accountId){
        Account acc = [SELECT Name, Phone, Rating FROM Account WHERE ID=:accountID ALL ROWS];
        undelete acc;
        System.debug('Name Undeleted: '+acc.Name);
        return acc;
    }
    
    public static List<Account> getAccounts(){
        List<Account> acc = [SELECT Name, Phone, Rating FROM Account];
        return acc;        
    }
    
    public static void printAccount(){
        List<Account> acc = getAccounts();
        for(Account rep : acc){
            System.debug('Name:' +rep.Name + 'Phone: '+rep.Phone + 'Rating: ' +rep.Rating);
        }
    }
    
    public static void ifAccount(){
        List<Account> acc = getAccounts();
        for(Account rep : acc){
            if(rep.Rating == 'Hot' || rep.Rating == 'Warm' || rep.Rating == 'Cold'){
                System.debug('Name: ' +rep.Name + '\nPhone: '+rep.Phone + '\nRating: ' +rep.Rating);
            }
        }
    }
    
/*Account acc = New Account(Name='Cassio', Phone='1234567890', Rating='Hot');
Account inserted = CRUDTest.insertAccount(acc);
List<Account> accounts = CRUDTest.getAccounts();
CRUDTest.ifAccount();
CRUDTest.deleteAccount('001aj000016MZKSAA4');
CRUDTest.seeDeletedAccount();
CRUDTest.undeletedAccount('001aj000016MZKSAA4');*/

    
}