<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp"%>
<title>Create Auction</title>
<%@include file="parts/header.jsp"%>
</head>
<body>
	<jsp:include page="parts/navbar.jsp"></jsp:include>

	<!--  check to see if the user is logged in. -->

	<!--  if user is logged in make sure that the user has items.  -->
	<!--  if the user doesn't have items, redirect them to the add item page -->

	<div class="contianer">


		<h2>Create Auction</h2>

		<form action="insertAuction.jsp" method="POST" class="form-inline">
			<fieldset>
				<legend>Items to Choose from:</legend>
				<!--  list the items that the user has as radio buttons -->
				<!-- <input
					type="radio" name="gender" value="M" checked> Male <br />-->
			</fieldset>
			<fieldset>
				<legend>Pricing:</legend>
				<label for="minPrice">Minimum Price for Item</label>
				<br>
				<input type="number" name="minPrice" value="minPrice" placeholder="20.00"><br>
				
				<label for="initPrice">Initial Price for Item</label>
				<br>
				<input type="number" name="initPrice" value="initPrice" placeholder="5.00"><br>
				
				<label for="bidIncr">Bid Increment</label>
				<br>
				<input type="number" name="bidIncr" value="bidIncr" placeholder=".2"><br>
				
			</fieldset>
			<input type="submit" value="Submit" />

		</form>
	</div>
</body>
</html>