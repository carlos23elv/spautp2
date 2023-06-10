<%-- 
    Document   : pruebaInsercion
    Created on : 10 jun. 2023, 00:34:35
    Author     : stree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
    </body>
</html>
