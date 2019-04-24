<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp" %>
<title>Auction <%= request.getParameter("name") %></title>
<%@include file="parts/header.jsp" %>
</head>
<body>
	<jsp:include page="parts/navbar.jsp"></jsp:include>
	
	<div class="container">
		<div style="align:center; display:block; border-style:double">
			<h2><!--  Auction name --></h2>
			<hr>
			<br>
			<p><!-- Item on auction --></p>
			<br>
			<p><!-- current price --></p>
			<br>
			<p><!-- countdown time --></p>
			<br>
			<a href="addBid.jsp?auctionID=<%=request.getParameter("auctionID")%>"><button class="button button1">Add Bid</button></a>
		</div>
	</div>
</body>
</html>