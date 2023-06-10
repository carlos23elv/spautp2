<%-- 
    Document   : pruebaInsercion
    Created on : 10 jun. 2023, 00:34:35
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
        <%  //prueba de conexion
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
            ps=con.prepareStatement("select * from especialidad");
            rs=ps.executeQuery();
            
            %>
        <h1>Insertar datos</h1>
        <<form method="post" action="insert.jsp">
            <table>
                <tr>
                    <td>idEspecialista :</td>
                    <td><input type="text" name="idespecialidad"/></td>
                </tr>
                <tr>
                    <td>nom especialidad :</td>
                    <td><input type="text" name="nomespecial"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="submit"/></td>
                </tr>
            </table>
            </form>
            <div class="container">            
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">New Add</button>
            <div style="padding-left: 800px">                  
                <input type="text" class="form-control" value="Buscar"/>                            
            </div>
            </div>  
            <div class="container">
                <table class="table table-bordered">
                <tr>
                    <th class="text-center">idEspecialidad</th>
                    <th class="text-center" >NomEspecialidad</th>
                    <th class="text-center">ACCIONES</th>
                </tr>
                <%
                    while(rs.next()){
                %>
                <tr>
                    <td class="text-center"><%=rs.getString("idespecialidad")%></td>
                    <td class="text-center"><%=rs.getString("nomespecial")%></td>
                    <td class="text-center">
                        <a th:href="editar.jsp?idespecialidad=<%= rs.getString("idespecialidad")%>" class="btn btn-warning btn-sm">Editar</a>
                        <a th:href="eliminar.jsp?idespecialidad=<%= rs.getString("idespecialidad")%>" class="btn btn-danger btn-sm">Eliminar</a>
                    </td>
                </tr>
                <%} %>
            </table>
            </div>
        <div class="container">          
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                    <div class="modal-content">
                        <div class="modal-header">                            
                            <h4 class="modal-title" id="myModalLabel">Agregar Registro</h4>
                        </div>
                        <div class="modal-body">
                            <form action="" method="post">
                                <label>ID:</label> 
                                <input type="text" name="txtid" class="form-control"/><br>
                                <label>Nombre ESp:</label> 
                                <input type="text" name="txtNom" class="form-control"/>                                      
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                            
                                    <input type="submit" value="Guardar" class="btn btn-primary"/>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
            </div>
            <%
                String id, nom;
                id = request.getParameter("txtid");
                nom = request.getParameter("txtNom");
                if (id != null && nom != null) {
                    ps = con.prepareStatement("insert into especialidad(idespecialidad, nomespecial)values('" + id + "','" + nom + "')");
                    ps.executeUpdate();
                    response.sendRedirect("pruebaInsercion.jsp");

                }
            %>
        </div>        
        <script src="js/jquery.js" type="text/javascript"></script>             
        <script src="js/bootstrap.min.js" type="text/javascript"></script>  
              
    </body>
</html>
