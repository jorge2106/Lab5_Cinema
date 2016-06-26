<%-- 
    Document   : seatsSelecction
    Created on : 23/06/2016, 10:46:34 PM
    Author     : Justin
--%>

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
        <h3>Seleccione los  asientos</h3>
        <table style="width:100%">
            <tr>
                <td> </td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
            </tr>
            <tr>
                <td>A</td>
                <td><input type="checkbox" name="A1"/></td>
                <td><input type="checkbox" name="A2"/></td>
                <td><input type="checkbox" name="A3"/></td>
                <td><input type="checkbox" name="A4"/></td>
            </tr>
            <tr>
                <td>B</td>
                <td><input type="checkbox" name="B1"/></td>
                <td><input type="checkbox" name="B2"/></td>
                <td><input type="checkbox" name="B3"/></td>
                <td><input type="checkbox" name="B4"/></td>
            </tr>
            <tr>
                <td>C</td>
                <td><input type="checkbox" name="C1"/></td>
                <td><input type="checkbox" name="C2"/></td>
                <td><input type="checkbox" name="C3"/></td>
                <td><input type="checkbox" name="C4"/></td>
            </tr>
            <tr>
                <td>D</td>
                <td><input type="checkbox" name="D1"/></td>
                <td><input type="checkbox" name="D2"/></td>
                <td><input type="checkbox" name="D3"/></td>
                <td><input type="checkbox" name="D4"/></td>
            </tr>
            <tr>
                <td>E</td>
                <td><input type="checkbox" name="E1"/></td>
                <td><input type="checkbox" name="E2"/></td>
                <td><input type="checkbox" name="E3"/></td>
                <td><input type="checkbox" name="E4"/></td>
            </tr>
        </table>
        <input type="submit" value="Continuar"/>
    </body>
</html>
