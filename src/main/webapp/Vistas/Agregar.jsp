<%-- 
    Document   : Agregar
    Created on : 10 jun. 2023, 02:24:36
    Author     : stree
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Agregar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                ID:
                <input type="text" name="txtid" class="form-control"/><br>
                Nombre:
                <input type="text" name="txtNom" class="form-control"/>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                <a href="index.jsp">Regresar</a>
            </form>
    </body>
</html>
<% //prueba de conexion
            Connection con;
            String url="jdbc:mysql://localhost/spautp";
            String Driver="com.mysql.cj.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            con=DriverManager.getConnection(url,user,clave);
            PreparedStatement ps;
            ResultSet rs;
            //lista la tabla 
            
            String id,nom;
            id=request.getParameter("txtid");
            nom=request.getParameter("txtNom");
            if(id!=null && nom!=null ){
                ps=con.prepareStatement("insert into especialidad(idespecialidad, nomespecial)values('"+id+"','"+nom+"')");
                ps.executeUpdate();
                JOptionPane.showMessageDialog(null,"se agrego correctamente");
                response.sendRedirect("pruebaInsercion.jsp");
    }
%>