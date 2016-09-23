public class accountContact
{     
    public Account acct;
    public String FirstName{get;set;}
    public String LastName{get;set;}
    public String Title{get;set;}   
    public boolean PrimaryContact{get;set;}
    public accountContact(ApexPages.standardController controller)
    {
      this.acct = (Account)controller.getRecord();    
    }        
    public PageReference save()
    {
        insert acct;
        Contact con = new Contact();
        Con.FirstName = FirstName;
        Con.LastName = LastName;
        Con.Title = Title;
        con.Primary_Contact__c=PrimaryContact;
        Con.AccountId = acct.id;
        insert con; 
		// this is a page reference
        PageReference pageref = new ApexPages.StandardController(acct).view();
     
        pageref.setRedirect(true);
        return pageref;        
    }
 
}