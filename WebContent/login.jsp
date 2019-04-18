<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Form</title>
</head>
<body>
	
	<form action="checkLoginDetails.jsp" method="POST">
		Username: <input type="text" name="username" /> <br /> Password:<input
			type="password" name="password" /> 
			<br /> 
			<input type="submit" value="Submit" />
	</form>
	
	<br>
	<hr>
	<br>
	
	<form action="createUser.jsp" method="POST">
		Username: <input type="text" name="username"/>
		<br>
		Password:  <input type="password" name="password"/>
		<br>
		<p> Type: </p>
		<input type="radio" name="userType" value="Basic">
		Basic User
		<br>
		<input type="radio" name="userType" value="Representative">
		Customer Representative
		<br>
		<input type="submit" value="Create User">
	</form>
</body>
</html>