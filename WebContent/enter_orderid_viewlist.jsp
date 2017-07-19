<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entry_Order-idPage</title>
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
 
<table width="1355" border="5">
  <tbody>   
  <tr>
<td colspan="6" bgcolor="#000000">
    <b><center><font face="Verdana " color="#ffffff" size="18"><strong>Check Customer's Order Details With</strong></font> </center></b>
</td>
</tr>
</tbody>
</table>

<form action="view_order_details.jsp">
  <p align="center">
    <label for="textfield"><strong>Order-id:</strong><br>
    </label>
    <input type="text" name="OrderId" required id="textfield">
  </p>
  <p align="center">
   <input type="submit" value="Display">
  </p>
</form>
<form action="adminpage.jsp">
   <p align="center">
   <input type="submit" value="Back">
  </p>
</form>
<% HttpSession session1 = request.getSession(false); %>

</body>
</html>