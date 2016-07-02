package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginModel;
import model.Usuario;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charse=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        LoginModel loginModel = new LoginModel();
        
        Usuario usuario = loginModel.autenticacion(username, password);
        
        if (usuario != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", usuario.getUsername() );
            session.setAttribute("id_usuario", usuario.getId()+"");
            response.sendRedirect("menu.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
