package sqlmap;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqliteManager {

  private static Connection conn;

  private SqliteManager() {
  }

  public static Connection getInstance(){
    if (conn== null){
      try {
        Class.forName("org.sqlite.JDBC");
        conn = DriverManager.getConnection("jdbc:sqlite:"+System.getProperty("user.home")+"/sqlite3db/hakaBoard.db");
      } catch (Exception e) {
        System.err.println(e.getClass().getName() + ": " + e.getMessage());
      }
      System.out.println("Opened database successfully");
    }
    return conn;
  }

}
