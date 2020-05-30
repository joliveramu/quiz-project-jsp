<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"  %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Main</title>
<link rel="stylesheet" href = "css/bootstrap.css"/>
<script src = "js/bootstrap.js"></script>
</head>
<body class = "container-fluid">
<h1>Quiz</h1>
<hr/>
<form method = "POST" method = "form-group" action = "QuizResults.jsp">
<table class = "table mt-1">
<thead>
<tr>
<th>Question #</th>
<th>Question</th>
<th>Response</th>
<th></th>
</tr>
</thead>
<tbody>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_quiz?useTimezone=true&serverTimezone=UTC","root","");

Statement statement = connect.createStatement();

ResultSet rSet = statement.executeQuery("select * from questionnaire order by rand() limit 5  ;");

while(rSet.next()){
	out.println("<tr>");
	out.println("<td>"+rSet.getInt(1)+"</td>");
	out.println("<td>"+rSet.getString(2)+"</td>");
	out.println("<td> <input type = 'text' name = 'myAnswers' required class = 'form-control'/></td>");
	out.println("<td> <input type = 'hidden' name = 'correctAnswers' value = '"+rSet.getString(3)+"'/></td>");
	out.println("</tr>");
}
}catch(Exception e)
{
	out.println(e);
}
%>
</tbody>
</table>

<button type = "submit" name = "btnSubmit" class = "btn btn-info">Submit Answers</button>
</form>

</body>
</html>