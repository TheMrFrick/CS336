<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp"%>
<title>addItem</title>
<%@include file="parts/header.jsp"%>
</head>
<body>
	<!-- Get the user's login information to see if they are logged in. -->
	<!--     This could be just a quick thing to see -->
	<!--     It would connect to checkLoginDetails -->

	<jsp:include page="parts/navbar.jsp"></jsp:include>
	<div class="container">
		<h2>Add Item</h2>
		<form action="insertItem.jsp" method="POST" class="form-inline">
			<fieldset>
				<legend>Basic Information:</legend>
				<label for="gender">Gender Make: </label> <br> <input
					type="radio" name="gender" value="male" checked> Male <br />
				<input type="radio" name="gender" value="female"> Female <br>
				<input type="radio" name="gender" value="other"> Other <br>
				<label for="color">Password:</label> <br> <input type="text"
					name="color" placeholder="Brown" /> <br /> <label for="brand">Brand:</label><br>
				<input type="text" name="brand" placeholder="Gucci" /> <br> <label
					for="material">Material:</label><br> <input type="text"
					name="material" placeholder="Leather"><br>
			</fieldset>
			<fieldset>
				<legend>Specific Item Information:</legend>
				<label for="type">Type of Clothing</label> <br>
				<input type="radio" name="type" value="bottom"> Bottom <br>
				<input type="radio" name="type" value="shoe"> Shoe <br>
				<input type="radio" name="type" value="top"> Top <br>
				<label for="size">Size:</label><br>
				<input type="text" name="size" placeholder="M"> <br>
				<label for="style">Style:</label>
				<input type="text" name="style" placeholder="High-Fashion"><br>
			</fieldset>
			<input type="submit" value="Submit" />

		</form>
	</div>
</body>
</html>