<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
	<form method="post">
		<CENTER>
			<h1>update recode</h1>
		</CENTER>
		<%
		try {
			String id = request.getParameter("id1");
			int s_id = Integer.parseInt(id);
			String name = request.getParameter("name");

			Class.forName("com.mysql.cj.jdbc.Driver");
			String jdbcUrl = "jdbc:mysql://localhost:3306/dsnl";
			String username = "root";
			String password = "";
			String sql = "update etable set name= '" + name + "' where id='" + s_id + "'";

			Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
			Statement stmt = conn.createStatement();

			stmt.executeUpdate(sql);
			out.println("Record update successfully");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		%>
<br><center>
<a href="index.html"><h3>home</h3></a>
</center>
	</form>




</body>
</html>