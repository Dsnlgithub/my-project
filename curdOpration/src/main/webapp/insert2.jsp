<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<form method="post">
		<CENTER>
			<h1>your details</h1>
		</CENTER>
		<%
		try {

			int s_id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			int age = Integer.parseInt(request.getParameter("age"));
			String language = request.getParameter("language");
			String academic = request.getParameter("academic");
			String job = request.getParameter("job");

			Class.forName("com.mysql.cj.jdbc.Driver");
			String jdbcUrl = "jdbc:mysql://localhost:3306/dsnl";
			String username = "root";
			String password = "";
			String sql = "insert into etable  (id , name ,address , age,language ,academic , job )" + "values (?,?,?,?,?,?,?)";

			Connection conn = DriverManager.getConnection(jdbcUrl, username, password);

			// create the mysql insert preparedstatement
			PreparedStatement Stmt = conn.prepareStatement(sql);
			Stmt.setInt(1, s_id);
			Stmt.setString(2, name);
			Stmt.setString(3, address);
			Stmt.setInt(4, age);
			Stmt.setString(5, language);
			Stmt.setString(6, academic);
			Stmt.setString(7, job);
			// execute the preparedstatement
			Stmt.execute();

			conn.close();

			out.println("Record insert successfully");

		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		%>
<br><center>
<a href="index.html"><h3>home</h3></a>
</center>

	</form>




</body>
</html>