public with sharing class Accountslist{
    @AuraEnabled
    public static List<Account> acclist() { 
        
        return [SELECT Id, Name, Type, AnnualRevenue FROM account];
    }
}
