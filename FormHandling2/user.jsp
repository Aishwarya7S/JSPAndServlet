<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding-top: 50px;
    }
    .container {
        width: 350px;
        margin: auto;
        background-color: #fff;
        padding: 20px 30px;
        border: 1px solid #ccc;
        border-radius: 8px;
    }
    label {
        display: block;
        margin-top: 10px;
    }
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        margin-top: 15px;
        padding: 10px;
        width: 100%;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="container">
        <h3 style="text-align:center;">User Registration Form</h3>
        <form action="show.jsp" method="post">
            <label for="uname">Name:</label>
            <input type="text" name="uname" id="uname" required>

            <label for="uemail">Email:</label>
            <input type="text" name="uemail" id="uemail" required>

            <label for="uage">Age:</label>
            <input type="text" name="uage" id="uage" required>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
