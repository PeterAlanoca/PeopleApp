package model;

public class Usuario {
    
    private int id;
    private String username, password, nombre, apellido, correo, foto, siguiendo, seguidores;

    public Usuario() {
    
    }
    
    
    public Usuario(int id, String username, String password, String nombre, String apellido, String correo, String foto, String siguiendo, String seguidores) {
       this.id = id;
       this.username = username;
       this.password = password;
       this.nombre = nombre;
       this.apellido = apellido;
       this.correo = correo;
       this.foto = foto;
       this.siguiendo = siguiendo;
       this.seguidores = seguidores;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getCorreo() {
        return correo;
    }
    
    public void setSiguiendo(String siguiendo) {
        this.siguiendo = siguiendo;
    }

    public void setSeguidores(String seguidores) {
        this.seguidores = seguidores;
    }

    public String getSiguiendo() {
        return siguiendo;
    }

    public String getSeguidores() {
        return seguidores;
    }
}
