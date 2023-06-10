<%-- 
    Document   : editar.jsp
    Created on : 10 jun. 2023, 02:09:13
    Author     : stree
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../src/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            Connection con;
            String url="jdbc:mysql://localhost/spautp";
            String Driver="com.mysql.cj.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName(Driver);
            con=DriverManager.getConnection(url,user,clave);
            PreparedStatement ps;
            ResultSet rs;
            String id= request.getParameter("idespecialidad");
            ps=con.prepareStatement("select * from especialidad where idespecialidad="+id);
            rs=ps.executeQuery();
            while(rs.next()){
             %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                ID:
                <input type="text" name="txtid" class="form-control" value="<%= rs.getString("idespecialidad")%>"/>
                 Nombre Especialidad:
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("nomespecial")%>"/>
                
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                
                <a href="index.jsp">Regresar</a>
            </form>
            <%}%>
        </div>
    </body>
</html>
<%
    String cod, nom;
       cod=request.getParameter("txtid");
       nom=request.getParameter("txtNom");
       if(nom!=null && cod!=null){
           ps=con.prepareStatement("update especialidad set nomespecial='"+nom+"' where idespecialidad ="+cod);
           ps.executeUpdate();
           response.sendRedirect("pruebaInsercion.jsp");
       }    
%>