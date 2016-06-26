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
        <form method="get" action="payment.jsp">
            <h3>Seleccione los asientos</h3>
            <% String columns = "ABCDE";
            String rows = "1234";%>
            <table style="width:100%">
                <tr>
                    <% for (int h = -1; h < columns.length(); h++) { %>
                    <td>
                        <% if (h != -1) {%>
                        <%=columns.charAt(h)%>
                        <%  } %>
                    </td>
                    <% } %>
                </tr>
                <% for (int i = 0; i < rows.length(); i++) { %>
                <tr>
                    <% for (int j = 0; j <= columns.length(); j++) { %>
                    <td>
                        <% if (j == 0) {%>
                        <%=rows.charAt(i)%>
                        <%} else { %>
                        <input type="checkbox">
                        <% } %>
                    </td>  
                    <% } %>
                </tr>
                <% }%>
            </table>
            <input type="submit" value="Continuar"/>
        </form>
    </body>
</html>
