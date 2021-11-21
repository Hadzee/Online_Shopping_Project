<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or change your address</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 class="alert">Address successfully updated!</h3>
<%}  %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Error occurred! Try Again.</h3>
<%}  %>
<%
try {
    Connection con = ConnectionProvider.getConn();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from users where email = '" + email + "'");
    while(rs.next()) {
%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter your address</h3>
 <input class="input-style" type="text" name="address" value="<%=rs.getString(7)%>" placeholder="Enter your address" required>
 <hr>
 <h3>Enter your city</h3>
 <input class="input-style" type="text" name="city" value="<%=rs.getString(8)%>" placeholder="Enter your city" required>
<hr>
<h3>Enter your state</h3>
<input class="input-style" type="text" name="state" value="<%=rs.getString(9)%>" placeholder="Enter your state" required>
<hr>
<h3>Enter your country</h3>
<input class="input-style" type="text" name="country" value="<%=rs.getString(10)%>" placeholder="Enter your country" required>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
        }
    } catch(Exception e) {
        System.out.println(e);
    }
%>
</body>
<br><br><br>
<br>
</html>