public interface ITest {
    Integer getNewNum();
    String getName();

    IChildTest getChild();
    void setChild(IChildTest child);
}