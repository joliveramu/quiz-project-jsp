<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"  %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Takers</title>
<link rel="stylesheet" href = "css/bootstrap.css"/>
<script src = "js/bootstrap.js"></script>
</head>
<body class = "container-fluid">
<h1>Quiz Results</h1>
<hr/>
<a href = "Index.html">Back</a>
<table class = "table mt-1">
<thead>
<tr>
<th>Name</th>
<th>Score</th>
<th>Date Taken</th>
<th></th>
</tr>
</thead>
<tbody>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_quiz?useTimezone=true&serverTimezone=UTC","root","");

Statement statement = connect.createStatement();

ResultSet rSet = statement.executeQuery("select * from registrants order by registrant_id desc");

while(rSet.next()){
	out.println("<tr>");
	out.println("<td>"+rSet.getString(2)+"</td>");
	out.println("<td>"+rSet.getString(3)+"</td>");
	out.println("<td>"+rSet.getString(4)+"</td>");
	out.println("</tr>");
}
}catch(Exception e)
{
	out.println(e);
}
%>
</tbody>
</table>
</body>
</html>