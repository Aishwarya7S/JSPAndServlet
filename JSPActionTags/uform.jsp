<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding-top: 50px;
    }
    .container {
        width: 400px;
        margin: auto;
        background-color: #fff;
        padding: 30px 40px;
        border: 2px solid #1447f5;
        border-radius: 8px;
    }
    label {
        display: block;
        margin-top: 10px;
    }
    input[type="text"], input[type="email"]{
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        margin-top: 15px;
        padding: 10px;
        width: 100%;
        background-color: #14d9f5;
        color: black;
        border: none;
        border-radius: 5px;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="container">
    	<jsp:include page="header.jsp" />
        <form action="details.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>

            <label for="regno">Register Number:</label>
            <input type="text" name="regno" id="regno" >
            
            <input type="submit" value="Submit">
        </form>
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>