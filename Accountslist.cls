public with sharing class Accountslist{
    @AuraEnabled
    public static List<Account> acclist() { 
        return [select id from account limit 1]
        return [SELECT Id, Name, Type, AnnualRevenue FROM account];
    }
}
