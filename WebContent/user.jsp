<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="parts/meta.jsp"%>
<title>My Account</title>
<%@include file="parts/header.jsp"%>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<jsp:include page="parts/navbar.jsp"></jsp:include>

	<!--  Check to see if the user is logged in if user is logged in, use their settings -->

	<div class="contianer">
		<div style="align: center; display: block; border-style: double">
			<h2>User Details</h2>

			<!-- go through the user details such as how many items, type of user -->
			<%
				String username = ((String) request.getParameter("user"));

				//I think this goes here
				ApplicationDB dao = new ApplicationDB();

				Connection connection = dao.getConnection();

				try {
					PreparedStatement ps = connection.prepareStatement("SELECT * FROM Users WHERE username ='" + username + "'");

					ResultSet rs = ps.executeQuery();
					while (rs.next()) {
			%>
			<h4>
				Username:
				<%=rs.getString("username")%></h4>
			<h4>
				Password:
				<%=rs.getString("pass")%></h4>

			<%
				} 
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				dao.closeConnection(connection);
			%>
		</div>
		<br>
		<hr>
		<br>
		<div style="align: center; display: block; border-style: dotted">
			<h2>Auctions</h2>
			<table>
				<th>Auction ID</th>
				<th>Item ID</th>
				<th>
			
			
			
			
			
			</table>
			<!--  go through the auctions of the user and list them -->
		</div>
		<br>
		<hr>
		<br>
		<div style="align: center; display: block; border-style: double">
			<h2>Bid History</h2>

			<!--  go through the bid history of the user and list them -->
		</div>
	</div>
</body>
</html>