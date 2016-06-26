
<%@page import="beans.Function"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.FunctionManager"%>
<%@page import="beans.MoviesManager"%>
<jsp:useBean id="movieActual" scope="session" class="beans.Movie" />
<jsp:useBean id="function" scope="session" class="beans.Function" />



<%
    MoviesManager manager = new MoviesManager(getServletContext().getRealPath("xmlFile/Billboard.xml"));
    FunctionManager managerFunct = new FunctionManager(getServletContext().getRealPath("xmlFile/Function.xml"));

    String movieId = request.getParameter("option");
    int id = Integer.parseInt(movieId);
    
    ArrayList<Function> functions = managerFunct.get(id);

    movieActual = manager.getBillboardById(id);
    session.setAttribute("movieActual", movieActual);

    response.sendRedirect("movieSelected.jsp");
%>


