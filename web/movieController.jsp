
<jsp:useBean id="movieActual" scope="session" class="beans.Movie" />
<jsp:useBean id="manager" scope="session" type="beans.MoviesManager" />



<%
    String movieId = request.getParameter("option");
    int id = Integer.parseInt(movieId);
    movieActual = manager.getBillboardById(id);
    session.setAttribute("movieActual", movieActual);
    response.sendRedirect("movieSelected.jsp");
%>


