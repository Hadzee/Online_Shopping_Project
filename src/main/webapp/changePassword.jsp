<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Password update</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h3 class="alert">The new password and the confirmed password do not match!</h3>
<%}  %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your old password is incorrect!</h3>
<%}  %>
<%
if("done".equals(msg))
{
%>
<h3 class="alert">Password successfully updated !</h3>
<%}  %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Error occurred! Try again.</h3>
<%}  %>
<form action="changePasswordAction.jsp" method="post">
<h3>Enter the old Password</h3>
 <input class="input-style" type="password" name="oldPassword" placeholder="Enter the old password" required>
  <hr>
 <h3>Enter the new Password</h3>
 <input class="input-style" type="password" name="newPassword" placeholder="Enter the new password" required>
 <hr>
<h3>Confirm the new Password</h3>
<input class="input-style" type="password" name="confirmPassword" placeholder="Confirm the new password" required>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>