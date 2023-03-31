public with sharing class ProductDataController {

    // apex method to fetch contact records from salesforce database 
    @AuraEnabled
    public static list<Product2> fetchProduct2(){        
        list<Product2> lstProduct = [SELECT Id, Name, CreatedById,Description,ProductCode FROM Product2 WHERE Product2.Name !='null' LIMIT 5000];         
        return lstProduct;        
    }
}

// look for offset to limit the data shown in FE
// https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_offset.htm
