package sqlmap;

public class Test {
public static void main(String[] args) {
  try {
    Class.forName("org.sqlite.JDBC");
  } catch (ClassNotFoundException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
  }
}
}
