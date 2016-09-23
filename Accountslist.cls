public with sharing class Accountslist{
    @AuraEnabled
    public static List<Account> acclist() { 
        //this returns only account
        // Master commit by deepan
        return [SELECT Id, Name, Type, AnnualRevenue FROM account];
    }
}
