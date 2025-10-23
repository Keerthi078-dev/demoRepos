public with sharing class AccountService {
    
    // Method to create a new Account
    public static Id createAccount(String name, String phone, String website) {
        Account acc = new Account(
            Name = name,
            Phone = phone,
            Website = website
        );
        insert acc;
        return acc.Id;
    }
    
    // Method to get Account by Id
    public static Account getAccountById(Id accountId) {
        return [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId LIMIT 1];
    }
    
    // Method to update an Account
    //test comit
    public static void updateAccount(Id accountId, String name, String phone, String website) {
        Account acc = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Name = name;
        acc.Phone = phone;
        acc.Website = website;
        update acc;
    }
    
    // Method to delete an Account
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete acc;
    }
}
