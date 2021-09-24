public with sharing class TestFactory implements IFactory{
    public Object buildObject() {
        Test t = (Test) Type.forName('Test').newInstance();
        t.setChild((IChildTest) Catalog.getInstance().getImplementation('IChildTest'));
        return t;
    }
}
