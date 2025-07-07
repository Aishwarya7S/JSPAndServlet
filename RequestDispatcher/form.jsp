<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	<form action="servlet" method="get" style="width: 350px; margin: 50px auto; padding: 30px; border: 3px solid #ccc; border-radius: 10px; background-color: #f9f9f9; font-family: Arial;">
    <h2 style="text-align: center; color: #333;"> Form:</h2>
    
    <label for="user" style="display: block; margin-bottom: 10px; font-weight: bold;">Name:</label>
    <input type="text" name="user" id="user" style="width: 100%; padding: 8px; border: 2px solid #333; border-radius: 4px; margin-bottom: 15px;" />
    
    <input type="submit" value="Send" style="width: 100%; padding: 10px; background-color: green; color: white; border: none; border-radius: 5px; cursor: pointer;" />
</form>

</body>
</html>
