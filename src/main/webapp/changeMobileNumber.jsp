<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change your mobile number</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">You successfully changed your mobile number.</h3>
<%}  %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your password is incorrect.</h3>
<%}  %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter your new mobile number</h3>
  <input class="input-style" type="number" name="mobileNumber" placeholder="Enter your new mobile number" required>
 <hr>
<h3>Enter your password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter your password(for security)" required>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>

</body>
<br><br><br>
</html>