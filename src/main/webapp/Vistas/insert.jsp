<%-- 
    Document   : insert.jsp
    Created on : 10 jun. 2023, 00:44:05
    Author     : stree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*" %>
<%Class.forName("com.mysql.cj.jdbc.Driver");%>
<%  
    String id=request.getParameter("idespecialidad");
    String nom=request.getParameter("nomespecial");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/spautp","root","");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into especialidad(idespecialidad,nomespecial) values('"+id+"','"+nom+"')");
    out.println("insertado");
    %>