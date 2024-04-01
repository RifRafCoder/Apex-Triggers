trigger AccountTrigger on Account (before insert, after insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        for(Account acc : Trigger.new){
            // Set account type to 'Prospect' if Type is empty
            if(acc.Type == null){
                acc.Type = 'Prospect';
            }
            //Copy shipping address to billing address if shipping fields are not empty
            if(String.isNotBlank(acc.ShippingStreet) && String.isNotBlank(acc.ShippingCity) && String.isNotBlank(acc.ShippingState) && String.isNotBlank(acc.ShippingPostalCode) && String.isNotBlank(acc.ShippingCountry)){
                acc.BillingStreet = acc.ShippingStreet;
                acc.BillingCity = acc.ShippingCity;
                acc.BillingState = acc.ShippingState;
                acc.BillingPostalCode = acc.ShippingPostalCode;
                acc.BillingCountry = acc.ShippingCountry;
            }

            //set the rating to 'Hot' if the Phone, Website, and Fax ALL have a value.
            if(acc.Phone != null && acc.Website != null && acc.Fax != null){
                acc.Rating = 'Hot';
            }
        }
    }

    if(Trigger.isAfter && Trigger.isInsert){
        List<Contact> newContacts = new List<Contact>();
        for(Account acc : Trigger.new){
            //When an account is inserted create a contact related to the account with the following default values:
            Contact cont = new Contact(
                LastName = 'DefaultContact',
                Email = 'default@email.com',
                AccountId = acc.Id
            );
            newContacts.add(cont);
        }
        insert newContacts;
    }
}