<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp" %>
<title>Search Results</title>
<%@include file="parts/header.jsp" %>
</head>
<body>
	<jsp:include page="parts/navbar.jsp"></jsp:include>
	
	<div class = "container">
		<!--  get the items passed to this URL from the DB and showcase them in a table -->
		
		<table>
			<tr>
				<th> Item Name </th>
				<th> Description </th>
				<th> Bid </th>
				<th> View </th>
			</tr>
			
			<!--  finish the code here -->
		</table>
	</div>
</body>
</html>