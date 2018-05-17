package dataLayer;

import java.sql.*;

public class DB_user {

    final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost/webapp";

    final String USER = "webappuser";
    final String PASS = "Yemma1963";



    public boolean isValidUserLogin (String sUsername, String sUserPassword){
        boolean isValidUser=false;
        Connection conn = null;
        Statement stmt = null;
        String sql = "";


        try {
            //enregestrer la basez de donnes
            Class.forName("com.mysql.jdbc.Driver");

            //3: ouvrir une connection
            System.out.println("Connection to data base");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            //4 excute a query
            System.out.println("Creating statement ....");
            stmt = conn.createStatement();

            sql = "SELECT * FROM users WHERE username = \"" + sUsername + "\" AND password = \"" + sUserPassword + "\"";
            System.out.println(sql);

            ResultSet rs = stmt.executeQuery(sql);

            //5: extract data from result set
            if (rs.next()) {

                isValidUser = true;
            }

            // 6: clean-up envirenement

            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException se) {
            //handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //finally bloque user to close ressources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// on peut rien faire
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {

                se.printStackTrace();
            }//end finally try

        }//end try
        System.out.println("Closing DB Connection = Goodbye");

        return isValidUser;

    }


}
