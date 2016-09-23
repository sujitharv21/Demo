public with sharing class Accountslist{
    @AuraEnabled
    public static List<Account> acclist() { 
        return [SELECT Id, Name, Type, AnnualRevenue FROM account limit 50]; 
        return [select id from account];
		//changes in demobranch
    }
}
