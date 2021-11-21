<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1) !=null)
    window.history.forward(1);
</script>
</head>
<body>
<br>
<table>
<thead>
<%
String email = session.getAttribute("email").toString();
int total = 0;
int serialNumber = 0;

try {
    Connection con = ConnectionProvider.getConn();
    Statement st = con.createStatement();
    ResultSet rs1 = st.executeQuery("select sum(total) from cart where email = '" + email + "' and address is NULL");
    while(rs1.next()) {
       total = rs1.getInt(1);
       }
%>
          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %></th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
<%
    ResultSet rs = st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email = '" + email + "' and cart.address is NULL");
    while(rs.next()) {
%>
          <tr>
          <%serialNumber = serialNumber + 1;%>
           <td><%out.println(serialNumber); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
            <td> <%=rs.getString(8) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(10) %></td>
            </tr>
         <%
         }
     ResultSet rs2 = st.executeQuery("select * from users where email = '" + email + "'");
     while(rs2.next()) {
         %>
        </tbody>
      </table>
      
<hr style="width: 100%">
<form action="addressPaymentForOrderAction.jsp" method="post">
 <div class="left-div">
 <h3>Enter your address</h3>
<input class="input-style" type="text" name="address" value="<%rs2.getString(7);%>" placeholder="Enter Address" required>
 </div>

<div class="right-div">
<h3>Enter your city</h3>
<input class="input-style" type="text" name="city" value="<%rs2.getString(8);%>" placeholder="Enter City" required>
</div> 

<div class="left-div">
<h3>Enter your state</h3>
<input class="input-style" type="text" name="state" value="<%rs2.getString(9);%>" placeholder="Enter State" required>
</div>

<div class="right-div">
<h3>Enter your country</h3>
<input class="input-style" type="text" name="country" value="<%rs2.getString(10);%>" placeholder="Enter Country" required>
</div>
<h3 style="color: red">*If there is no address, it means you have not set your address.</h3>
<h3 style="color: red">*This address will also be updated to your profile.</h3>
<hr style="width: 100%">
<div class="left-div">
<h3>Select the way of Payment</h3>
 <select class="input-style" name="paymentMethod">
 <option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
 <option value="Online Payment">Online Payment</option>
 </select>
</div>

<div class="right-div">
<h3>Pay online on this shopping site.</h3>
<input class="input-style" type="text" name="transactionId" placeholder="Enter Transaction ID">
<h3 style="color: red">*If you select online payment, enter your transaction ID here, otherwise leave this part blank.</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
<input class="input-style" type="text" name="mobileNumber" value="<%rs2.getString(3);%>" placeholder="Enter your mobile number" required>
<h3 style="color: red">*This mobile number will also be updated to your profile.</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter the wrong transaction id, your order will be canceled.</h3>
<button class="button" type="submit">Proceed to generate the bill <i class='far fa-arrow-alt-circle-right'></i></button>
<h3 style="color: red">*Fill the form correctly</h3>
</div>
</form>
<%
        }
    } catch(Exception e) {
        System.out.println(e);
    }
%>
      <br>
      <br>
      <br>

</body>
</html>