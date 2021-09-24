public with sharing class ChildTestFactory implements IFactory{
    public Object buildObject() {
        IChildTest t = new ChildTest();
        return t;
    }
}
