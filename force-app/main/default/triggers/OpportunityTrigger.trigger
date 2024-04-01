trigger OpportunityTrigger on Opportunity (before update, before delete) {
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            for(Opportunity opp : Trigger.new){
            //When an opportunity is updated validate that the amount is greater than 5000
                if(opp.Amount <= 5000){
                    opp.addError('Opportunity amount must be greater than 5000');
                }
            }
        
              //When an opportunity is updated set the primary contact on the opportunity to the contact on the same account with the title of 'CEO'.
              Set<Id> accountIds = new Set<Id>();
              for(Opportunity opp : Trigger.new){
                  accountIds.add(opp.AccountId);
              }
              //get contacts with ceo title and those account ids
              List<Contact> contactsWithCeo = [SELECT Id, AccountId, Title FROM Contact WHERE AccountId IN :accountIds AND Title = 'CEO'];
              //map each account id to the contact
              Map<Id, Contact> mappContAcc = new Map<Id, Contact>();
              for(Contact con : contactsWithCeo){
                  mappContAcc.put(con.AccountId, con);
              }
              for(Opportunity opp : Trigger.new){
                  //assign the value of the contact id to primary field - by getting account id related to that opp from Map
                  opp.Primary_Contact__c = mappContAcc.get(opp.AccountId).Id;
          
              }

        } 
        else if(Trigger.isDelete){
            //When an opportunity is deleted prevent the deletion of a closed won opportunity if the account industry is 'Banking'
            //create list for closed won opp ids
            Set<Id> oppAccIds = new Set<Id>();
            for(Opportunity opp : Trigger.old){
                if(opp.StageName == 'Closed Won'){
                    oppAccIds.add(opp.AccountId);
                }
            }

            List<Account> bankingAccounts = [SELECT Id, Industry FROM Account WHERE Id IN :oppAccIds AND Industry = 'Banking'];
            for(Account acc : bankingAccounts){
                for(Opportunity opp : Trigger.old){
                    if(opp.StageName == 'Closed Won' && opp.AccountId == acc.Id){
                        opp.addError('Cannot delete closed opportunity for a banking account that is won');
                    }
                }
            }
        }
    } 

}