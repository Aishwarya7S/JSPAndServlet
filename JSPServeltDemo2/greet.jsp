<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Greeting Message</title>
</head>
<body>
	<h3>Greeting Message</h3>
	<p><b><%= request.getAttribute("greet") %></b></p>

</body>
</html>