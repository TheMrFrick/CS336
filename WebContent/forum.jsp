<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp"%>
<title>Forum</title>
<%@include file="parts/header.jsp"%>
</head>
<body>
	<jsp:include page="parts/navbar.jsp"></jsp:include>

	<div class="container">
		<!-- This will go into the forum table and just list them out.  -->
		<!--  Users will go through a specific page for each forum -->

		<!--  check to see if a user is logged in. If so, then the button will be enabled -->
		<!--  if not, then the button should be disabled. -->
		<button class="button button1" value="createForum">New Forum</button>
	</div>
</body>
</html>