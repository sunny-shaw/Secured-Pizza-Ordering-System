<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add_store_details</title>
</head>
<body>
<style type="text/css">
body,td,th {
	font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
	font-style: inherit;
	font-weight: 300;
	font-size: 14px;
}
</style>
</head>

<body background = "img/bg.jpg">

<table style="margin-top:200px;" width="1355"  border="0">
  <tbody>
<tr>
<td height="65" colspan="5" bgcolor="">
    <b><center><font face="Verdana" color="white" size="18"><strong>Add new Store</strong></font> </center></b>
</td>
</tr>
</tbody>
</table>

<form id="form1" name="form1" method="post" action="insert_store_details.jsp">
  <center>
   <p>
    <label for="textfield"><strong>Name:</strong><br>
    </label>
    <input type="text" name="Name" required id="textfield">
</p>
  <p>
    <label for="textarea"><strong>Street:</strong><br>
    </label>
    <textarea name="Street"  required id="textarea"></textarea>
  </p>
   <p>
    <label for="textfield"><strong>State:</strong><br>
    </label>
    <input type="text" name="State" required id="textfield">
</p>
 
  <p>
    <label for="textfield2"><strong>Pincode:</strong><br>
    </label>
    <input name="Pincode" type="text" required id="textfield2" maxlength="6">
  </p>
  <p>
    <label for="textfield3"><strong>Mobile-no.:</strong></label><br>
  
    <input name="MobileNo" type="text" required id="textfield3" maxlength="10">
  </p>
  <p>
    <input type="submit" name="submit" id="submit" value="Confirm">
  </p>
  <% HttpSession session1 = request.getSession(false); %>
</center>
</form>
<form action="view_store_list.jsp">
<center>
    <input type="submit" value="Back">
</center>
</form>
<p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp; </p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
</body>
</html>