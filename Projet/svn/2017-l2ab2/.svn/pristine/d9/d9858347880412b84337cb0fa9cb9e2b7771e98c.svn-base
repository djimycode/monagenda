package main.ech;


import java.lang.*;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.sql.*;

public class insert {

      public static Connection getConnection() {
          Connection connection = null;


          try {
              Class.forName("com.mysql.jdbc.Driver");
              connection = DriverManager.getConnection("jdbc:mysql://localhost/webapp", "webappuser", "Yemma1963");
          } catch (Exception e) {
              e.printStackTrace();
          }
          return connection;
      }

        }


