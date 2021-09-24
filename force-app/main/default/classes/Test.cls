public with sharing class Test implements ITest{
    private Integer i = 0;
    private IChildTest child;
    
    public IChildTest getChild() {
        return child;
    }

    public void setChild(IChildTest child) {
        this.child = child;
    }

    public Test() {
        System.debug(getNewNum());
    }

    public Integer getNewNum() {
        return i = i + 1;
    }

    public String getName() {
        return 'Some Name';
    }
}
