<%-- 
    Document   : eliminar
    Created on : 10 jun. 2023, 02:13:25
    Author     : stree
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  //prueba de conexion
            Connection con;
            String url="jdbc:mysql://localhost/spautp";
            String Driver="com.mysql.cj.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            con=DriverManager.getConnection(url,user,clave);
            PreparedStatement ps;
            //lista la tabla
            String id= request.getParameter("idespecialidad");
            ps=con.prepareStatement("delete from especialidad where idespecialidad="+id);
            ps.executeUpdate();
            response.sendRedirect("pruebaInsercion.jsp");
            %>
    </body>
</html>
