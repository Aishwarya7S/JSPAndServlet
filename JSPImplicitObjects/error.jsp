<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
</head>
<body>
    <h2 style="color:red;">Oops! An error occurred:</h2>
    <p><b>Exception:</b> <%= exception %></p>
    <a href="form.jsp">Go back to form</a>
</body>
</html>
