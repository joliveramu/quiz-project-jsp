<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"  %>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href = "css/bootstrap.css"/>
<script src = "js/bootstrap.js"></script>
<title>Your Results</title>
</head>
<body class = "container-fluid">
<h1 class = "text-danger">Your Results:</h1>
<hr/>
<%
int score = 0;
if(request.getParameter("btnSubmit") != null)
{
	String[] myAnswer = request.getParameterValues("myAnswers");
	String[] correctAnswer = request.getParameterValues("correctAnswers");
	
	
	
	for(int i = 0; i < 5; i++)
	{
		out.println("Your answer: <label = 'text-danbger'>" + myAnswer[i]+"</label> <label class = 'text-success'>Correct Answer: "+correctAnswer[i]+"</label><br>");

		if(myAnswer[i].equalsIgnoreCase(correctAnswer[i])){
			score++;
		}
		
	}
	out.println("<h2 class = 'text-info'>Your score is: "+score +"</h2>");
}
%>

<br/><br/>
<h2 class = "text-info">Submit Result: </h2>
<hr/>

<form method = "post" class = "form-group">
<label>Enter your Name: </label> <br/>
<input type = "text" name = "participant" required class = "form-control">
<input type = "hidden" name = "quizScore" value = "<%out.println(score);%>"/>
<br/>
<button type = "submit" name = "btnSubmitParticipant" class = "btn btn-info">Submit Score</button>
</form>

<%
try{
	if(request.getParameter("btnSubmitParticipant") != null)
	{
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_quiz?useTimezone=true&serverTimezone=UTC","root","");

		String sql = "INSERT INTO registrants (registrant_name, score, date_taken) values (?,?, now());";
		PreparedStatement statement = connect.prepareStatement(sql);
		statement.setString(1, request.getParameter("participant"));
		statement.setString(2, request.getParameter("quizScore"));
		int rowsInserted = statement.executeUpdate();
		if (rowsInserted > 0) {
		    out.println("Result submitted!!");
		    out.println("<a href = 'Index.html' class = 'text-success'>Return to Home</a>");
		}
	}
}catch(Exception e){
	out.println(e);
}
%>
</body>
</html>