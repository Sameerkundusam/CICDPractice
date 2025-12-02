public class AccountCalculator {
//testing 123
    @future
    public static void countContact(List<Id> accIds){
        List<Account> accList = [Select Id,(SELECT Id from Contacts) From Account WHERE Id IN: accIds];
        
        for(Account acc : accList){
            acc.Number_of_contacts__c = acc.Contacts.size();
        }
        
        if(!accList.isEmpty()){
            update accList ;
        }
    }

}
