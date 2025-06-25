<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<h3 style="color: red;">Validation Error</h3>
    <p><%= request.getParameter("msg") %></p>
    <a href="uform.jsp">← Back to Form</a>

</body>
</html>