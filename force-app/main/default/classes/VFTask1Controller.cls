public with sharing class VFTask1Controller {
    
    public List<Contact> contactsToDisplay {get;set;}
    public String searchName {get; set;}

    public PageReference getContacts() {
        String searchTemplate = searchName + '%';
        
        contactsToDisplay = [
            SELECT Account.Name, Email, MobilePhone, AccountId, FirstName, LastName, CreatedDate
            FROM Contact
            WHERE FirstName LIKE :searchTemplate
            LIMIT 100
        ];

        return null;
    }

    public VFTask1Controller(){
        searchName = '';
        getContacts();
    }


}
