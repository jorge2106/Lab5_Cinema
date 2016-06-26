<%-- 
    Document   : movieSelected
    Created on : 21/06/2016, 10:26:30 AM
    Author     : Jorge
--%>

<%@page import="beans.MoviesManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Movie"%>
<%@page import="beans.Function"%>

<jsp:useBean id="function1" scope="session" type="beans.Function" />
<jsp:useBean id="function2" scope="session" type="beans.Function" />


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/cinta_cinematografica_by_martuuchiis-d4dq5it.png" />
        <link rel="stylesheet" href="generalStyle.css">
        <title>FilMax</title>
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
            <%@include file="menu.jsp" %>
        </header>

        <jsp:useBean id="movieActual" scope="session" type="beans.Movie" />

        <%
            String name = movieActual.getName();
            String sinopsis = movieActual.getSinopsis();
            String urlImage = movieActual.getUrlImage();
            String urlVideo = movieActual.getUrlVideo();
        %>
    <movie>
        <h2><%=name%></h2>
        <img src=<%=urlImage%> alt="FilMax" style="width:400px;height:370px;border:0">
        <h3>Sinopsis:</h3>
        <p><%=sinopsis%></p>
        <div>
            <iframe width="600" height="300" src="<%=urlVideo%>" frameborder="0" allowfullscreen></iframe>
        </div>

        <%
            MoviesManager manager = new MoviesManager(getServletContext().getRealPath("xmlFile/Billboard.xml"));
            if (manager.getMovieState(movieActual.getId()).equals("Cartelera")) {
        %>
        <h2>Seleccione la fecha y hora</h2>
        <form action="">
            <label><strong>Horarios: </strong><br/><br/></label>
            <a href="functionController.jsp?option=<%="function1"%>"><jsp:getProperty name="function1" property="dateHour"/></a><br/><br/>
            <a href="functionController.jsp?option=<%="function1"%>"><jsp:getProperty name="function1" property="dateHour"/></a><br/><br/>
        </form> 
        <%
            }
        %>
    </body>
</html>
