
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
        <header>
            <%@include file="header.jsp" %>
            <%@include file="menu.jsp" %>
        </header>
        <jsp:useBean id="movie" scope="session" class="beans.Movie" />
        <section>
            <%
                MoviesManager manager = new MoviesManager(getServletContext().getRealPath("xmlFile/Billboard.xml"));
                ArrayList movies = manager.getAllBillboardMovies();
                for (int i = 0; i < movies.size(); i++) {
                    movie = (Movie) movies.get(i);
                    String name = movie.getName();
                    int movieId = movie.getId();
                    String sinopsis = movie.getSinopsis();
                    String urlImage = movie.getUrlImage();
            %>
            <div>
                <h2>
                    <a href="movieController.jsp?option=<%=movieId%>"><%=name%></a>
                </h2>
                <a href="movieController.jsp?option=<%=movieId%>">
                    <img src=<%=urlImage%> alt="FilMax" style="width:400px;height:370px;border:0">
                </a> 
            </div>
            <%
                }
            %>
        </section>
    </body>
</html>
