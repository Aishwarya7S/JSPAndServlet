<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bean.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Data</title>
</head>
<body>

<jsp:useBean id="user" class="com.bean.User" scope="request" />
<jsp:setProperty name="user" property="*" />

<%
    // Validate name
    if (user.getName() == null || user.getName().trim().equals("")) {
%>
    <jsp:forward page="error.jsp">
        <jsp:param name="msg" value="Name is required!" />
    </jsp:forward>
<%
    }

    // Validate email
    if (user.getEmail() == null || user.getEmail().trim().equals("")) {
%>
    <jsp:forward page="error.jsp">
        <jsp:param name="msg" value="Email is required!" />
    </jsp:forward>
<%
    }

    // Validate regno
    if (user.getRegno() == null || user.getRegno().trim().equals("")) {
%>
    <jsp:forward page="error.jsp">
        <jsp:param name="msg" value="Register Number is required!" />
    </jsp:forward>
<%
    }
%>

<h3>Form submitted successfully.</h3>
<b>Name:</b> <jsp:getProperty name="user" property="name" /> <br>
<b>Email:</b> <jsp:getProperty name="user" property="email" /> <br>
<b>Register Number:</b> <jsp:getProperty name="user" property="regno" /> <br>

</body>
</html>
