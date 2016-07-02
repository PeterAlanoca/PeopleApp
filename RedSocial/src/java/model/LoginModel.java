package model;

import com.mysql.jdbc.PreparedStatement;
import com.sun.xml.messaging.saaj.soap.SAAJMetaFactoryImpl;
import conf.database.Conexion;

import java.sql.ResultSet;

public class LoginModel extends Conexion{
    
    public Usuario autenticacion(String username, String password){
        
        Usuario usuario = null;
        
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String query = "select * from usuario where username = ? and password = ?";
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
           
                usuario = new Usuario(
                        resultSet.getInt("id"), 
                        resultSet.getString("username"),
                        resultSet.getString("password"),
                        resultSet.getString("nombre"),
                        resultSet.getString("apellido"),
                        resultSet.getString("correo"),
                        resultSet.getString("foto"),
                        resultSet.getString("siguiendo"),
                        resultSet.getString("seguidores")
                );
            }
            
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            try {
                
            } catch (Exception e) {
                System.out.print(e);
            }
        }
        return usuario;
    }
    
   
    
}
