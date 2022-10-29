<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.com</title>
</head>
<style>
        .gfg {
         
            margin: 3%;
            position: relative;
        }
  
        .second-txt {
            position: absolute;
            bottom: 100px;
            left: 450px;
        }
    </style>

<body >


<form method="post">
<CENTER><h1>your Recode</h1></CENTER>
<%
try
{
String id=request.getParameter("id");
int s_id=Integer.parseInt(id);


Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/dsnl";
String username="root";
String password="";
String query="select * from  etable where id='"+s_id+"'";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<center>

		 <table border="1" >
			<tr>
				<th>id</th>
				<th>name</th>
				<th>address</th>
				<th>age</th>
				<th>language</th>
				<th>academic</th>
				<th>job</th>
			</tr>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getInt(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
			    <td><%=rs.getString(7)%></td>
			</tr>
		</table>

	</center>
 <%

}
%>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>



<br><center>
<a href="index.html"><h3>home</h3></a>
</center>
</form>




</body>
</html>