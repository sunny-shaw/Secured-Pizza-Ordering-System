<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete_Store_Details</title>
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
<body background = " img/bg.jpg">
<% HttpSession session1 = request.getSession(false); %>
<form action="delete_store_details.jsp">
<table style="margin-top:200px;" width="1355"  border="0">
  <tbody>
<tr>
<td height="65" colspan="6" bgcolor="">
    <b><center><font face="Arial Black" color="white" size="18"><strong>Delete Store</strong></font> </center></b>
</td>
</tr>
</tbody>
</table>
<p align="center">
    <strong>Store-id:</strong><br><input type="text" name="sid" required id="textfield" >
</p>
<p align="center">
    <input type="submit" name="submit"  value="Confirm">
</p>
</form>
<form action="view_store_list.jsp">
<center>
    <input type="submit" name="submit"  value="Back">
    </center>
</form>

</body>
</html>