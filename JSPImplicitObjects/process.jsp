<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Implicit Objects</title>
</head>
<body>

<%
    // 1. Get input from request
    String name = request.getParameter("uname");

    // 2. Redirect to form page if name is empty
    if (name == null || name.trim().equals("")) {
        response.sendRedirect("form.jsp");
        return;
    }

    // 3. Set name in session
    session.setAttribute("user", name);

    // 4. Application-wide counter
    Integer count = (Integer) application.getAttribute("visitCount");
    if (count == null) count = 1;
    else count++;
    application.setAttribute("visitCount", count);

    // 5. Output values
%>
    <h2>Hello, <%= name %>!</h2>
    <p>Session User: <%= session.getAttribute("user") %></p>
    <p>Total Visits: <%= application.getAttribute("visitCount") %></p>
    <p>Servlet Config Name: <%= config.getServletName() %></p>

<%
    // 6. Uncomment to test exception (will go to error.jsp)
    // int x = 5 / 0;
%>

</body>
</html>
