
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.BillboardMoviesManager"%>
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

        <jsp:useBean id="manager" scope="session" class="beans.BillboardMoviesManager" />
        <jsp:useBean id="movie" scope="session" class="beans.Movie" />
        <%
            ArrayList movies = manager.getAllMovies();
            System.out.println(movies.toString());
            for (int i = 0; i < movies.size(); i++) {
                movie = (Movie) movies.get(i);
                String name = movie.getName();
                int movieId = movie.getId();
                String sinopsis = movie.getSinopsis();
                String urlImage = movie.getUrlImage();
        %>
        <section>
            <li><a href="" id="<%=movieId%>">
                    <img src=<%=urlImage%> alt="FilMax" style="width:270px;height:240px;border:0">
                    <%=name%>
                </a></li>
            <p><%=sinopsis%></p>
        </section><br><br><br>
        <%
            }
        %>
    </body>
</html>
