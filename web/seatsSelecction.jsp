<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/cinta_cinematografica_by_martuuchiis-d4dq5it.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>FilMax</title>
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
            <%@include file="menu.jsp" %>
        </header>
        <h3>Seleccione los asientos</h3>
        <% String columns = "ABCDE"; %>
        <table style="width:100%">

            <% for (int i = 1; i <= 4; i++) { %>
            <tr>
                <% for (int j = 0; j < columns.length(); j++) { %>
                <td>
                    <input type="submit" value="<%= "" + columns.charAt(j) + i%>"/>
                </td>
                <% } %>
            </tr>
            <% }%>
        </table>
        <input type="submit" value="Continuar"/>
    </body>
</html>
