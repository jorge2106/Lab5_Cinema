<%-- 
    Document   : nextrReleases
    Created on : 23/06/2016, 10:46:22 PM
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

        <jsp:useBean id="managerNext" scope="session" class="beans.MoviesManager" />
        <jsp:useBean id="movieNext" scope="session" class="beans.Movie" />
        <%
            ArrayList movies = managerNext.getAllNextReleasesMovies();
            System.out.println(movies.toString());
            for (int i = 0; i < movies.size(); i++) {
                movieNext = (Movie) movies.get(i);
                String name = movieNext.getName();
                int movieId = movieNext.getId();
                String sinopsis = movieNext.getSinopsis();
                String urlImage = movieNext.getUrlImage();
        %>
        <table>
            <tr>
                <td>
                    <a href="">
                        <%=name%>
                        <img src=<%=urlImage%> alt="FilMax" style="width:400px;height:370px;border:0">
                    </a>
                </td>
            </tr>
        </table>
        <%
            }
        %>
    </body>
</html>
