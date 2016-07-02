package conf.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOSTNAME = "localhost";
    private String PORT = "3306";
    private String DATABASE = "db_redsocial";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+HOSTNAME+":"+PORT+"/"+DATABASE;  
    private static Connection connection;
    
    public Conexion() {
    	try {
            Class.forName(CLASSNAME);
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             
    	} catch (ClassNotFoundException e) {
            System.out.println(e);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Connection getConnection() {
        return connection;
    }
       
}
