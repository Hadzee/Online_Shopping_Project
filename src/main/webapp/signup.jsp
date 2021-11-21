<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter your name" required>
    <input type="email" name="email" placeholder="Enter your email" required>
    <input type="number" name="mobileNumber" placeholder="Enter your mobile number" required>
    <select name="securityQuestion" required>
    <option value="What city were you born in?">What city were you born in?</option>
    <option value="In what city or town did your parents meet?">In what city or town did your parents meet?</option>
    <option value="What was the first concert you attended?">What was the first concert you attended?</option>
    <option value="What was the make and model of your first car?">What was the make and model of your first car?</option>
    </select>
    <input type="text" name="answer" placeholder="Enter Answer" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered.</h1>
<%}  %>
<%
if("invalid".equals(msg))
{
%>
<h1>Error Occurred! Try Again.</h1>
<%}  %>

    <h2>Online Shopping</h2>
    <p>Online shopping is a form of electronic commerce, which allows consumers to directly buy goods or services from a seller over the Internet, using a web browser.</p>
  </div>
</div>

</body>
</html>