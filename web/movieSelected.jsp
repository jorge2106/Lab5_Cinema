<%-- 
    Document   : movieSelected
    Created on : 21/06/2016, 10:26:30 AM
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Movie"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/cinta_cinematografica_by_martuuchiis-d4dq5it.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>FilMax</title>
    </head>
    <body>
        <img src="img/cinta_cinematografica_by_martuuchiis-d4dq5it.png" alt="Cinema">
        <%@include file="header.jsp" %>
        <%@include file="menu.jsp" %>

        <jsp:useBean id="movieActual" scope="session" type="beans.Movie" />

        <%
            String name = movieActual.getName();
            String sinopsis = movieActual.getSinopsis();
            String urlImage = movieActual.getUrlImage();
            String urlVideo = movieActual.getUrlVideo();
        %>
        <table>
            <h1><%=name%></h1>
            <img src=<%=urlImage%> alt="FilMax" style="width:400px;height:370px;border:0">
            <p><%=sinopsis%></p>
            <iframe width="600" height="300" src="<%=urlVideo%>" frameborder="0" allowfullscreen></iframe>
            <h1>Seleccione la fecha y hora</h1>
            <form action="">
                <label><strong>Fecha: </strong><br/><br/></label>
                <input type="radio" name="date" value="24/6/2016"/><br/><br/>
                <input type="radio" name="date" value="25/6/2016"/><br/><br/>
                <input type="radio" name="date" value="26/6/2016"/><br/><br/>
                <label><strong>Horario: </strong><br/><br/></label>
                <input type="radio" name="time" value="4:00 pm"/><br/><br/>
                <input type="radio" name="time" value="6:00 pm"/><br/><br/>
                <input type="radio" name="time" value="8:00 pm"/><br/><br/>
            </form> 
        </table>
    </body>
</html>
