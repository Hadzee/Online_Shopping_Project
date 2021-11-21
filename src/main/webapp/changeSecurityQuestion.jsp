<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change your security question</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">You successfully changed your security question.</h3>
<%}  %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is incorrect!</h3>
<%}  %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
<select class="input-style" name="securityQuestion">
<option value="What city were you born in?">What city were you born in?</option>
<option value="In what city or town did your parents meet?">In what city or town did your parents meet?</option>
<option value="What was the first concert you attended?">What was the first concert you attended?</option>
<option value="What was the make and model of your first car?">What was the make and model of your first car?</option>
</select>
 <hr>
 <h3>Enter your new answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your new answer" required>
<hr>
<h3>Enter your password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter your password(for security)" required>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>