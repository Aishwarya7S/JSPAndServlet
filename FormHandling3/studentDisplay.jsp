<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding-top: 40px;
            background-color: #f9f9f9;
        }
        .container {
            width: 420px;
            margin: auto;
            background-color: #fff;
            padding: 25px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }
        h3 {
            text-align: center;
            color: #4CAF50;
        }
        .error {
            color: red;
            text-align: center;
            font-weight: bold;
        }
        table {
            width: 100%;
            margin-top: 15px;
        }
        td {
            padding: 8px;
        }
        td.label {
            font-weight: bold;
            width: 35%;
        }
    </style>
  </head>
 <body>
 	<% 
 		String name = request.getParameter("sname");
 		String email = request.getParameter("semail");
 		String rollno = request.getParameter("sroll");
 		String dept = request.getParameter("sdept");
 		boolean isValid = true;
 		StringBuilder errorMsg = new StringBuilder();
 		
 		 if (name == null || name.trim().equals("")) {
 			 errorMsg.append("<p class='error'>Name is required!</p>");
 	        isValid = false;
 	    }
 	    if (email == null || email.trim().equals("")) {
 	    	errorMsg.append("<p class='error'>Email is required!</p>");
 	        isValid = false;
 	    }
 	    if (rollno == null || rollno.trim().equals("")) {
 	    	errorMsg.append("<p class='error'>Roll Number is required!</p>");
 	        isValid = false;
 	    }
 	   if (dept == null || dept.trim().equals("")) {
 		  	errorMsg.append("<p class='error'>Department is required!</p>");
	        isValid = false;
	    }

 	    if (isValid) {
 	%>
 	
 		<div class="container">
            <h3>Success! Student details submitted.</h3>
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
                    <td class="label">Roll Number:</td>
                    <td><%= rollno %></td>
                </tr>
                <tr>
                    <td class="label">Department:</td>
                    <td><%= dept %></td>
                </tr>
                
            </table>
        </div>
<%
    } else {
%>
    <div class="container">
        <h3 style="color:red;">Form Submission Failed</h3>
        <%= errorMsg.toString() %>
        <a href="student.jsp" class="back-button" style="text-decoration: none;">Go Back</a>
    </div>
<%
    }
%>
 	 	
</body>
</html>