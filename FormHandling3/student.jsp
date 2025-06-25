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
        <h3 style="text-align:center;">Student Details Form</h3>
        <form action="studentDisplay.jsp" method="post">
            <label for="sname">Name:</label>
            <input type="text" name="sname" id="sname" required>

            <label for="semail">Email:</label>
            <input type="email" name="semail" id="semail" required>

            <label for="sroll">Roll No:</label>
            <input type="text" name="sroll" id="sroll" required>
            
            <label for="sdept">Department:</label>
            <input type="text" name="sdept" id="sdept" >

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
