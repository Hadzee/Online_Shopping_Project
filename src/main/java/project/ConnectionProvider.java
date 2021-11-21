package project;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

    public static Connection getConn() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/ospjsp","root","12345678");
            return con;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }

    }

}
