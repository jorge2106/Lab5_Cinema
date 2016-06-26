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
        <h2>Costo de las entradas<br> Niños: 2500<br> Adultos: 3500</h2>
        <h2>Digite la cantidad de asientos que desea comprar</h2>
        <form method="get" action="seatsSelecction.jsp">
            <h4>Asientos para niños&nbsp</h4><input type="text" maxlength="2" size="1" required/><br><br>
            <h4>Asientos para adultos&nbsp</h4><input type="text" maxlength="2" size="1" required/><br><br>
            <input type="submit" value="Continuar"/>
        </form>
    </center>
</body>
</html>
