<%-- 
    Document   : cantSeats
    Created on : 24/06/2016, 04:09:23 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/cinta_cinematografica_by_martuuchiis-d4dq5it.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>Cinema</title>
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
            <%@include file="menu.jsp" %>
        </header>
    <center>
        <h1>Costo de las entradas<br> Niños: 2500<br> Adultos: 3500</h1>
        <h1>Digite la cantidad de asientos que desea comprar</h1>
        Asientos para niños&nbsp<input type="text" maxlength="2" size="1"/><br><br>
        Asientos para adultos&nbsp<input type="text" maxlength="2" size="1"/><br><br>
        <input type="submit" value="Continuar"/>
    </center>
    </body>
</html>
