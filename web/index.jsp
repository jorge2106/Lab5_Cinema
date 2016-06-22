<%-- 
    Document   : newjsp
    Created on : 21/06/2016, 09:49:27 AM
    Author     : Jorge
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.MoviesManager"%>
<%@page import="beans.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <jsp:useBean id="manager" scope="session" class="beans.MoviesManager" />
        <jsp:useBean id="movie" scope="session" class="beans.Movie" />
        <%
            ArrayList movies = manager.getAllMovies();
            System.out.println(movies.toString());
             movie = null;
            for (int i = 0; i < movies.size(); i++) {
                movie = (Movie) movies.get(i);
                String name = movie.getName();
                String sinopsis = movie.getSinopsis();
                String urlImage = movie.getUrlImage();
                String urlVideo = movie.getUrlVideo();
        %>
        <ul>
            <li><a href=""><%=name%></a></li>
            <li>Tea</li>
            <li>Milk</li>
        </ul>

        <%
            }
        %>
    </body>
</html>
