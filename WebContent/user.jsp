<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp" %>
<title>My Account</title>
<%@include file="parts/header.jsp" %>
</head>
<body>
	<jsp:include page="parts/navbar.jsp"></jsp:include>
	
	<!--  Check to see if the user is logged in if user is logged in, use their settings -->
	
	<div class = "contianer">
		<div style="align:center; display:block; border-style:double">
			<h2>User Details</h2>
			
			<!-- go through the user details such as how many items, type of user -->
		</div>
		<br>
		<hr>
		<br>
		<div style="align:center; display:block; border-style: dotted">
			<h2>Auctions</h2>
			
			<!--  go through the auctions of the user and list them -->
		</div>
		<br>
		<hr>
		<br>
		<div style="align:center; display:block; border-style:double">
			<h2>Bid History</h2>
			
			<!--  go through the bid history of the user and list them -->
		</div>
	</div>
</body>
</html>