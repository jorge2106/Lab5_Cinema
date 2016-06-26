<%@page import="beans.Function"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="functionActual" scope="session" class="beans.Function" />

<jsp:useBean id="function1" scope="session" type="beans.Function" />
<jsp:useBean id="function2" scope="session" type="beans.Function" />

<%

    String selectedFunction = request.getParameter("option");

    if (selectedFunction.equals("fuction1")) {
        functionActual = function1;
    } else {
        functionActual = function2;
    }

    session.setAttribute("functionActual", functionActual);

    response.sendRedirect("cantSeats.jsp");
%>
