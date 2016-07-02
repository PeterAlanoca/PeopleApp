/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import com.mysql.jdbc.PreparedStatement;
import conf.database.Conexion;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Peter
 */
public class UsuarioModel extends Conexion{
        
    public List<Usuario> getAll(){
        ArrayList<Usuario> listUsuarios = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String query = "select * from usuario";
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Usuario usuario = new Usuario(
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
                listUsuarios.add(usuario);
            }
            
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            try {
                
            } catch (Exception e) {
                System.out.print(e);
            }
        }
        return listUsuarios;
    }
    
   
    
}
