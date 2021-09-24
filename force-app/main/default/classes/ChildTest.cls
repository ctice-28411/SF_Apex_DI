public with sharing class ChildTest implements IChildTest{
    private Integer i = 100;
    
    public ChildTest() {
        System.debug(getNewNum());
    }

    public Integer getNewNum() {
        return i = i + 1;
    }

    public String getName() {
        return 'Some Child Test Name';
    }
}
