/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Entidades.Encargado;
import Modelo.EncargadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControlEncargado {
    String listar="../inicio.jsp";
    
    Encargado c = new Encargado();
    EncargadoDAO dao = new EncargadoDAO();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlCliente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException 
    {
        String metodo = request.getParameter("metodo");

        if(metodo.equals("lista"))
        {
            lista(request, response);
        }

    }
    protected void lista(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException 
    {
        EncargadoDAO modelo = new EncargadoDAO();
        List<Encargado> lista = modelo.listar();
        request.setAttribute("clientes", lista);
        request.getRequestDispatcher("Administracion/inicio.jsp").forward(request, response);
    }
    
}
