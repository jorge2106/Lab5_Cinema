
<%@page import="beans.Function"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.FunctionManager"%>
<%@page import="beans.MoviesManager"%>
<jsp:useBean id="movieActual" scope="session" class="beans.Movie" />
<jsp:useBean id="function1" scope="session" class="beans.Function" />
<jsp:useBean id="function2" scope="session" class="beans.Function" />



<%
    MoviesManager manager = new MoviesManager(getServletContext().getRealPath("xmlFile/Billboard.xml"));
    FunctionManager managerFunct = new FunctionManager(getServletContext().getRealPath("xmlFile/Function.xml"));

    String movieId = request.getParameter("option");
    int id = Integer.parseInt(movieId);

    ArrayList<Function> functions = managerFunct.get(id);
    function1 = functions.get(0);
    function2 = functions.get(1);
    
    session.setAttribute("function1", function1);
    session.setAttribute("function2", function2);

    movieActual = manager.getBillboardById(id);
    session.setAttribute("movieActual", movieActual);

    response.sendRedirect("movieSelected.jsp");
%>


