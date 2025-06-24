<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form Data</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        padding-top: 50px;
    }
    .container {
        width: 400px;
        margin: auto;
        background-color: #fff;
        padding: 20px 30px;
        border: 2px solid #ccc;
        border-radius: 8px;
    }
    h4 {
        text-align: center;
        color: green;
    }
    table {
        width: 100%;
        margin-top: 20px;
    }
    td {
        padding: 8px 5px;
        vertical-align: top;
    }
    td.label {
        font-weight: bold;
        width: 30%;
    }
</style>
</head>
<body>
    <%
        String name = request.getParameter("uname");
        String email = request.getParameter("uemail");
        String age = request.getParameter("uage");
    %>
    <div class="container">
        <h4>Thank you! Your form has been submitted.</h4>
        <table>
            <tr>
                <td class="label">Name:</td>
                <td><%= name %></td>
            </tr>
            <tr>
                <td class="label">Email:</td>
                <td><%= email %></td>
            </tr>
            <tr>
                <td class="label">Age:</td>
                <td><%= age %></td>
            </tr>
        </table>
    </div>
</body>
</html>
