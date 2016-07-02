package model;

public class Publicacion {
    
    private int id, idUsuario;
    
    private String contenido, tipo, fecha;

    public Publicacion() {
    
    }
    
    public Publicacion(int id, int idUsuario, String contenido, String tipo, String fecha) {
        this.id = id;
        this.idUsuario = idUsuario;
        this.contenido = contenido;
        this.tipo = tipo;
        this.fecha = fecha;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public String getContenido() {
        return contenido;
    }

    public String getTipo() {
        return tipo;
    }
    
    

    
    
    
}
