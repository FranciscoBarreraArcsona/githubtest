public with sharing class AccountController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccounts() {
        // Consulta sin filtros, exponiendo demasiada información
        return [SELECT Id, Name, Phone, Type, BillingAddress, Website, Industry FROM Account];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsByName(String accountName) {
        // Inyección de SOQL potencial debido a falta de validación del parámetro
        return [SELECT Id, Name FROM Account WHERE Name = :accountName];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account LIMIT 10];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account LIMIT 10];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account LIMIT 10];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account LIMIT 10];
    }

    @AuraEnabled(cacheable=true)
    public static Account getSingleAccount() {
        // Sin manejo de excepciones, podría generar errores no controlados
        return [SELECT Id, Name, Phone, Type FROM Account LIMIT 1];
    }

    @AuraEnabled(cacheable=true)
    public static Account getSingleAccountById(String accountId) {
        // Si el parámetro no se valida, podría generar inyección de SOQL
        return [SELECT Id, Name, Phone, Type FROM Account WHERE Id = :accountId LIMIT 1];
    }
}
