public with sharing class Catalog {
    private List<CatalogEntry> entries;

    public Object getImplementation(String interfaceName) {
        if(entries == null) {
            loadEntries();
        }
        
        CatalogEntry entry = getImplementationCatalog(interfaceName);
        return entry.implementation;
    }

    private CatalogEntry getImplementationCatalog(String interfaceName) {
        for(CatalogEntry entry : entries) {
            if(entry.EntryInterface == interfaceName) {
                return entry;
            }
        }
        return null;
    }

    private void loadEntries() {
        if(entries == null) {
            entries = new List<CatalogEntry>();
            List<Catalog_Entry__mdt> catalog = [
                SELECT
                    Implementation__c,
                    Interface__c,
                    Factory__c,
                    Singleton__c
                FROM
                    Catalog_Entry__mdt
            ];
            for(Catalog_Entry__mdt entry : catalog) {
                entries.add(new CatalogEntry(entry));
            }
        }
    }

    private static Catalog instance;

    public static Catalog getInstance() {
        if (instance == null) {
            instance = new Catalog();
        }
        return instance;
    }
}
