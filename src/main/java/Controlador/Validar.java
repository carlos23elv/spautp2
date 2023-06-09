package Controlador;

import Entidades.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    UsuarioDAO userDAO = new UsuarioDAO();
    Usuario user = new Usuario();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
//        String accion = request.getParameter("accion");
//        
//        if (accion.equalsIgnoreCase("Ingresar")) {
//            String email = request.getParameter("txtemail");
//            String contrasena = request.getParameter("txtcontrasena");
//            emp = empDAO.validar(email, contrasena);
//            if (emp.getCorreo()!= null) {
//                request.getRequestDispatcher("Administracion/inicio.jsp").forward(request, response);
//            } else {
//                request.getRequestDispatcher("index.jsp").forward(request, response);
//            }
//        } else {
//            request.getRequestDispatcher("index.jsp").forward(request, response);
//        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException 
    {
        String metodo = request.getParameter("metodo");

        if(metodo.equals("valida"))
        {
            validar(request, response);
        }
        else 
            if(metodo.equals("registra"))
            {
                registra(request, response);
            }

    }
    protected void validar(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException 
    {
        String correo = request.getParameter("txtemail");
        String password = request.getParameter("txtcontrasena");
        user = userDAO.validar(correo, password);
        if(user.getCorreo()!=null){
            request.getRequestDispatcher("/Administracion/inicio.jsp").forward(request, response);            
        } else {
            request.getRequestDispatcher("#").forward(request, response);
        }
    }


    protected void registra(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
//        String nombre = request.getParameter("nombre");
//        String apellido = request.getParameter("apellido");
//        int edad = Integer.parseInt(request.getParameter("edad"));
//
//        ModeloAlumno modelo = new ModeloAlumno();
//        
//        Alumno alumno = new Alumno();
//        alumno.setNombres(nombre);
//        alumno.setApellidos(apellido);
//        alumno.setEdad(edad);
//
//        modelo.insertaAlumno(alumno);
//
//        lista(request, response);
    }
}
