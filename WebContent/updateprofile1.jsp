<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>
<style>
table {  
     width:50%;
}
table, th, td {
    
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table th	{
    
    color: white;
}
</style>
</head>
<body background= " img/bg.jpg">
<%!
Connection conn;
String UserId;
String FirstName;
String LastName;
String DOB;
String Gender;
String Street;
String Location;
String City;
String State;
String PinCode;
String MobileNo;
String EmailId;
String Password;
%>
<%!

	
void connect() throws Exception{
	try{
		Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","903880");
	}
	catch(Exception e){}
}
void display(String nm) throws Exception{
	try{
		Statement stmt = conn.createStatement();
		ResultSet res = stmt.executeQuery("select * from user_details where e_id='"+nm+"'");
			res.next();
			UserId = res.getString("id");
			FirstName = res.getString("fn");
			LastName = res.getString("ln");
		//	DOB1 = res.getString("dob");
			Gender = res.getString("gn");
			Street = res.getString("st");
			Location = res.getString("Lc");
			City = res.getString("city");
			State = res.getString("State");
			PinCode = res.getString("pin");
			MobileNo = res.getString("m_no");
			EmailId = res.getString("e_id");
			Password = res.getString("pw");

	}
	catch(Exception e){}
}	
%>
<%
  HttpSession session1=request.getSession(false);
  String nm = (String)session1.getAttribute("nm");

  connect();
  display(nm);
%>
	<table  style="margin-top:200px;" id="t01" >
	<tr>
<td colspan="6" bgcolor="">
   <b><center><font face="verenda" color="#ffffff" size="22">User Profile</font></center></b>
</td>
</tr>
		<center><tr>
			<th width="210"><center><font size="6px" color="white">Category</font></th>
			<th width="210"><center><font size="6px" color="white">Details</font></th>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">User ID</td>
			<td><center><font size="4px" color="white"><%=UserId%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">First Name</td>
			<td><center><font size="4px" color="white"><%=FirstName%></td>
		<tr>
			<td><center><font size="4px" color="white">Last Name</td>
			<td><center><font size="4px" color="white"><%=LastName%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">Gender</td>
			<td><center><font size="4px" color="white"><%=Gender%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">Street</td>
			<td><center><font size="4px" color="white"><%=Street%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">Location</td>
			<td><center><font size="4px" color="white"><%=Location%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">City</td>
			<td><center><font size="4px" color="white"><%=City%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">State</td>
			<td><center><font size="4px" color="white"><%=State%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">PIN Code</td>
			<td><center><font size="4px" color="white"><%=PinCode%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">Mobile No.</td>
			<td><center><font size="4px" color="white"><%=MobileNo%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">Email ID</td>
			<td><center><font size="4px" color="white"><%=EmailId%></td>
		</tr>
		<tr>
			<td><center><font size="4px" color="white">Password</td>
			<td><center><font size="4px" color="white"><%=Password%></td>
		</tr>	
	</table>

	<br/>
	<br/>
	
</body>
</html>
































