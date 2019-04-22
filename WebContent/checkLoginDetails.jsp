<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Details</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<jsp:useBean id="obj" class="com.cs336.pkg.User" />

	<jsp:setProperty property="*" name="obj" />
	<%
		boolean result = ApplicationDB.log(obj);

		if (result) {
			out.println("Success");
			session.setAttribute("user", obj.getUsername()); // the username will be stored in the session
			out.println("welcome " + obj.getUsername());
			
			//should redirect a user to the index
			//if user is an admin it should direct them to the admin page.
			
			out.println("<a href='logout.jsp'>Log out</a>");
			response.sendRedirect("success.jsp");

		} else {
			out.println("Failure");
			out.println("Invalid password <a href='login.jsp'>try again</a>");

		}

		// 		String userid = request.getParameter("username");
		// 		String pwd = request.getParameter("password");
		// 		ApplicationDB db = new ApplicationDB();
		// 		Connection con = db.getConnection();
		// 		Statement st = con.createStatement();
		// 		ResultSet rs;
		// 		rs = st.executeQuery("select * from user where username='" + userid + "' and pass='" + pwd + "'");
		// 		if (rs.next()) {
		// 			session.setAttribute("user", userid); // the username will be stored in the session
		// 			out.println("welcome " + userid);
		// 			out.println("<a href='logout.jsp'>Log out</a>");
		// 			response.sendRedirect("success.jsp");
		// 		} else {
		// 			out.println("Invalid password <a href='login.jsp'>try again</a>");
		// 		}
		// 		db.closeConnection(con);
	%>
</body>
</html>