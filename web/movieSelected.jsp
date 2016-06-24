<%-- 
    Document   : movieSelected
    Created on : 21/06/2016, 10:26:30 AM
    Author     : Jorge
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
        <img src="img/cinta_cinematografica_by_martuuchiis-d4dq5it.png" alt="Cinema">
        <%@include file="header.jsp" %>
        <%@include file="menu.jsp" %>
        
        <%
            String movieId = request.getParameter("movieId");
        %>
        
        <h1>Seleccione la fecha y hora</h1>
        <form action="">
            <label><strong>Fecha: </strong><br/><br/></label>
            <input type="radio" name="date1" value="24/6/2016"/><br/><br/>
            <input type="radio" name="date2" value="25/6/2016"/><br/><br/>
            <input type="radio" name="date3" value="26/6/2016"/><br/><br/>
           <label><strong>Horario: </strong><br/><br/></label>
           <input type="radio" name="time1" value="4:00 pm"/><br/><br/>
           <input type="radio" name="time2" value="6:00 pm"/><br/><br/>
           <input type="radio" name="time3" value="8:00 pm"/><br/><br/>
        </form>  

    </body>
</html>
