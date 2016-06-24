
<jsp:useBean id="movieActual" scope="session" class="beans.Movie" />
<jsp:useBean id="manager" scope="session" type="beans.MoviesManager" />



<%
    String movieId = request.getParameter("movieId");
    //movieActual = manager.getMovieById(Integer.parseInt(movieId));
    
    //response.sendRedirect("movieSelected.jsp");
%>

<h1><%=movieId%></h1>