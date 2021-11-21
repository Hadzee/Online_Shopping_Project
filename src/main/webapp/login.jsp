
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter your email" required>
      <input type="password" name="password" placeholder="Enter your password" required>
      <input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot your password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg = request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
<%}  %>
<%
if("invalid".equals(msg))
{%>
<h1>Error occurred! Try Again.</h1>
<%}  %>
    <h2>Online Shopping</h2>
    <p>Online shopping is a form of electronic commerce, which allows consumers to directly buy goods or services from a seller over the Internet, using a web browser.</p>
  </div>
</div>

</body>
</html>