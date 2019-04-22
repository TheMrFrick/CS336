<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp"%>
<title>Admin</title>
<%@include file="parts/header.jsp"%>
</head>
<body>
	<!-- check to see if the current user is the admin -->
	<!--  if they are, then they can continue onto the page -->
	<!--  if not, then they will be redirected -->

	<jsp:include page="parts/navbar.jsp"></jsp:include>


	<div class="container">
		<h2>Users</h2>
		<!-- This area will hold all the users except the admin -->
		<!--  will be in a table and the table will have the option to edit the user -->
		<!--  and delete the user -->
		<table>
			<tr>
				<th>Username</th>
				<th>password</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</table>
	</div>
</body>
</html>