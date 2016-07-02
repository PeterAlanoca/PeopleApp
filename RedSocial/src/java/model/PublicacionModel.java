
package model;

import com.mysql.jdbc.PreparedStatement;
import conf.database.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PublicacionModel extends Conexion{
    
    public void add(int id_usuario, String contenido, String tipo , String fecha){
        PreparedStatement statement = null;
      
        try {
            String query = "INSERT INTO publicacion(id_usuario, contenido, tipo, fecha) VALUES (?, ?, ?, ?)";
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            statement.setInt(1, id_usuario);
            statement.setString(2, contenido);
            statement.setString(3, tipo);
            statement.setString(4, fecha);
            statement.executeUpdate();            
        } catch (SQLException ex) {
            Logger.getLogger(PublicacionModel.class.getName()).log(Level.SEVERE, null, ex);
        }  
    }
    
    public void delete(int idPublicacion, int idUsuario){
        PreparedStatement statement = null;
      
        try {
            String query = "DELETE FROM publicacion WHERE id = ? and id_usuario = ?;";
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            statement.setInt(1, idPublicacion);
            statement.setInt(2, idUsuario);
            statement.executeUpdate();            
        } catch (SQLException ex) {
            Logger.getLogger(PublicacionModel.class.getName()).log(Level.SEVERE, null, ex);
        }  
    }
        
    public List<Publicacion> getAll(){
        ArrayList<Publicacion> listPublicacions = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String query = "select * from publicacion order by id desc;";
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Publicacion publicacion = new Publicacion(
                        resultSet.getInt("id"), 
                        resultSet.getInt("id_usuario"),
                        resultSet.getString("contenido"),
                        resultSet.getString("tipo"),
                        resultSet.getString("fecha")
                );
                listPublicacions.add(publicacion);
            }
            
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            try {
                
            } catch (Exception e) {
                System.out.print(e);
            }
        }
        return listPublicacions;
    }
    
    public String getCount(int idUsuario){
        String size = "";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String query = "select count(*) as cantidad from publicacion where id_usuario = ?;";
            
            statement = (PreparedStatement) getConnection().prepareStatement(query);
            statement.setInt(1, idUsuario);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                size = resultSet.getInt("cantidad")+"";     
            }
            
        } catch (Exception e) {
            System.out.print(e);
        } finally {
            try {
                
            } catch (Exception e) {
                System.out.print(e);
            }
        }
        return size;
    }
    
   
    
}
