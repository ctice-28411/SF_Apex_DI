public with sharing class CatalogEntry {
    private Catalog_Entry__mdt entry;
    private IFactory factory_instance;
    private Object implementation_instance;

    public IFactory Factory {
        get {
            if(factory_instance == null) {
                factory_instance = 
                    (IFactory)Type.forName(entry.Factory__c)
                        .newInstance();
            }
            return factory_instance;
        }
    }

    public String EntryInterface {
        get {
            return entry.Interface__c;
        }
    }

    public Object implementation {
        get {
            if((entry.Singleton__c && implementation_instance == null) 
                || (!entry.Singleton__c)) {
                implementation_instance = Factory.buildObject();
            }
            return implementation_instance;
        }
    }
    
    public CatalogEntry(Catalog_Entry__mdt entry) {
        this.entry = entry;
    }
}
