package com.OnlineBookStore.helper;
import java.sql.*;

public class connectionGet {
   public static Connection con;
  public static Connection getcon()
  {
      
     try {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_library","root","root");
   
      
    
    }catch(Exception e){
        e.printStackTrace();
    }
     return con;
  }
    
}
