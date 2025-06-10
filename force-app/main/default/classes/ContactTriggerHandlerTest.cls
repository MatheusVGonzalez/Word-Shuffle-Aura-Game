@isTest
public with sharing class ContactTriggerHandlerTest {

    @TestSetup
    public static void makeData(){
        List<Account> testAccounts = new List<Account>();
        testAccounts.add(new Account(Name = 'Test Account 1'));
        testAccounts.add(new Account(Name = 'Test Account 2'));

        insert testAccounts;

        List<Contact> testContacts = new List<Contact>();
        testContacts.add(new Contact(LastName = 'Test Contact 1', AccountId = testAccounts[0].Id, Active__c = true));
        testContacts.add(new Contact(LastName = 'Test Contact 2', AccountId = testAccounts[0].Id, Active__c = true));
        testContacts.add(new Contact(LastName = 'Test Contact 3', AccountId = testAccounts[0].Id));
        testContacts.add(new Contact(LastName = 'Test Contact 4', AccountId = testAccounts[0].Id));
        testContacts.add(new Contact(LastName = 'Test Contact 5', AccountId = testAccounts[1].Id));
    
        insert testContacts;
    }

     @isTest 
    public static void afterInsertHandlerTest2() {
        
        List<Account> accs = [SELECT Id, Name, Active_Contacts__c FROM Account];
        System.assertEquals(2, accs.size());
        for(Account acc : accs){
            if(acc.Name == 'Test Account 1') {
                System.assertEquals(2, acc.Active_Contacts__c);
            } else if (acc.Name == 'Test Account 2') {
                System.assertEquals(0, acc.Active_Contacts__c);
            }
        }
    
        List<Contact> allContacts = [SELECT Id FROM Contact];
        System.assertEquals(5, allContacts.size());
    }

    @isTest
    public static void afterInsertHandlerTestBulk() {
        Account testAccount1 = [SELECT Id FROM Account WHERE Name = 'Test Account 1'];
        List<Contact> testContacts = new List<Contact>();
        for(Integer i = 0; i < 1000; i++){
            testContacts.add(new Contact(LastName = 'Test Contact ' + i, AccountId = testAccount1.Id, Active__c = true));
        }
        insert testContacts;
        
        List<Account> accs = [SELECT Id, Name, Active_Contacts__c FROM Account];
        System.assertEquals(2, accs.size());
        for(Account acc : accs){
            if(acc.Name == 'Test Account 1') {
                System.assertEquals(1002, acc.Active_Contacts__c);
            } else if (acc.Name == 'Test Account 2') {
                System.assertEquals(0, acc.Active_Contacts__c);
            }
        }
    
        List<Contact> allContacts = [SELECT Id FROM Contact];
        System.assertEquals(1005, allContacts.size());
    }

    @isTest
    public static void afterUpdateHandlerTest1() {
        List<Contact> allContacts = [SELECT Id, LastName FROM Contact];
        for(Contact con : allContacts) {
            if(con.LastName == 'Test Contact 3' || con.LastName == 'Test Contact 4'){ 
                con.Active__c = true; // Set Active__c to true for these contacts
            } 
        }

        //use new set of governor limits
        Test.startTest();
        update allContacts;
        Test.stopTest();


        List<Account> accs = [SELECT Id, Name, Active_Contacts__c FROM Account];
        System.assertEquals(2, accs.size());
        for(Account acc : accs){
            if(acc.Name == 'Test Account 1') {
                System.assertEquals(4, acc.Active_Contacts__c);
            } else if (acc.Name == 'Test Account 2') {
                System.assertEquals(0, acc.Active_Contacts__c);
            }
        }
    
        System.assertEquals(5, allContacts.size());
    }

    @isTest
    public static void afterUpdateHandlerTest2() {
        Account testAccount2 = [SELECT Id FROM Account WHERE Name = 'Test Account 2'];
        List<Contact> allContacts = [SELECT Id, LastName FROM Contact];
        for(Contact con : allContacts) {
            if(con.LastName == 'Test Contact 3'){ 
                con.Active__c = true; // Set Active__c to true for these contacts
                con.AccountId = testAccount2.Id; // Change AccountId to Test Account 2
            } 
        }

        //use new set of governor limits
        Test.startTest();
        update allContacts;
        Test.stopTest();


        List<Account> accs = [SELECT Id, Name, Active_Contacts__c FROM Account];
        System.assertEquals(2, accs.size());
        for(Account acc : accs){
            if(acc.Name == 'Test Account 1') {
                System.assertEquals(2, acc.Active_Contacts__c);
            } else if (acc.Name == 'Test Account 2') {
                System.assertEquals(1, acc.Active_Contacts__c);
            }
        }
    
        System.assertEquals(5, allContacts.size());
    }

    public static void afterDeleteHandlerTest() {
        List<Contact> allContacts = [SELECT Id, LastName FROM Contact WHERE Name IN ('Test Contact 1', 'Test Contact 5')];

        Test.startTest();
        delete allContacts;
        Test.stopTest();

        List<Account> allAccounts = [SELECT Id, Name, Active_Contacts__c FROM Account];
        System.assertEquals(2, allAccounts.size());
        for (Account acc : allAccounts) {
            if (acc.Name == 'Test Account 1') {
                System.assertEquals(1, acc.Active_Contacts__c);
            }
            if (acc.Name == 'Test Account 2') {
                System.assertEquals(0, acc.Active_Contacts__c);
            }
        }    

        allContacts = [SELECT Id, LastName FROM Contact];
        System.assertEquals(3, allContacts.size());
        
    }
    @isTest
    public static void afterUndeleteHandlerTest() {
        List<Contact> contactsToDelete = [SELECT Id, LastName FROM Contact WHERE Name IN ('Test Contact 1', 'Test Contact 5')];
        delete contactsToDelete; //need to delete to undelete haha

        Test.startTest(); 
        undelete contactsToDelete; //undelete inside the startTest
        Test.stopTest();

        List<Account> allAccounts = [SELECT Id, Name, Active_Contacts__c FROM Account];
        System.assertEquals(2, allAccounts.size());
        for (Account acc : allAccounts) {
            if (acc.Name == 'Test Account 1') {
                System.assertEquals(2, acc.Active_Contacts__c);
            }
            if (acc.Name == 'Test Account 2') {
                System.assertEquals(0, acc.Active_Contacts__c);
            }
        }

        List<Contact> allContacts = [SELECT Id, LastName FROM Contact];
        System.assertEquals(5, allContacts.size());

    }

}