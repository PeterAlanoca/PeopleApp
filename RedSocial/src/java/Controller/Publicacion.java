/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.PublicacionModel;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Peter
 */
@WebServlet(name = "Publicacion", urlPatterns = {"/Publicacion"})
public class Publicacion extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PublicacionModel publicacionModel = new PublicacionModel();
        HttpSession session = request.getSession();
        String id = (String)session.getAttribute("id_usuario");
        int id_user = Integer.parseInt(id);
        String contenido = uploadFile(request);        
        String format =  contenido.substring(contenido.length()-3, contenido.length()-0);
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
	String fecha = dateFormat.format(calendar.getTime());
        publicacionModel.add(id_user, contenido, format, fecha);
        response.sendRedirect("menu.jsp");
        
    }
    
    private String uploadFile(HttpServletRequest request){
        String imageName = "", textfield = "";
        String archivourl = "C:\\xampp\\htdocs\\RedSocial\\web\\files";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(5000*1024);
        factory.setRepository(new File(archivourl));
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        try {
            List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
            String inputName = null;
            for(FileItem item : multiparts){
                if(!item.isFormField()){ 
                    String name = new File(item.getName()).getName();
                    item.write(new File(archivourl + File.separator + name));
                    imageName = name;
                }
                if(item.isFormField()){  
                    inputName = (String)item.getFieldName(); 
                    if(inputName.equalsIgnoreCase("cont")){ 
                        textfield = (String)item.getString(); 
                        imageName = textfield;
                    }
                }
            }
                
        } catch (Exception e){
               
        }
        return imageName;
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
