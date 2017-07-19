<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order list</title>
<style>
table, th, td {
	border: ;
	border-collapse: collapse;
}
</style>
</head>
<body background=" img/bg.jpg">
	<%!int i = 0;
	int sum;
	String orderId;
	ArrayList<String> f_id = new ArrayList<String>();
	ArrayList<String> qty = new ArrayList<String>();
	//String fid[] = new String[100];
	String nm[] = new String[100];
	String size[] = new String[100];
	//String qty[] = new String[100];
	String pr[] = new String[100];
	String typ[] = new String[100];
	int j = 0;
	%>
	<%!Connection conn;

	void connect() throws Exception {
		Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
		// System.out.println("connected..");
	}

	void display(ArrayList<String> f_id) throws Exception {
		PreparedStatement ob;
		ResultSet res;
		i = f_id.size();
		for(int k = 0; k < i; k++) {
			ob = conn.prepareStatement("select  * from food_list where f_id= ?");
			ob.setString(1, f_id.get(k));
			res = ob.executeQuery();
			res.next();
			//System.out.println("on");
			size[k] = res.getString("sz");
			pr[k] = res.getString("pr");
			nm[k] = res.getString("nm");
			typ[k] = res.getString("typ");
			//System.out.println(size[k]+pr[k]+nm[k]+typ[k]);
		}
	}%>
	<%
		HttpSession session1 = request.getSession(false);
		f_id = (ArrayList<String>) session1.getAttribute("order");
		qty = (ArrayList<String>) session1.getAttribute("quantity");
		connect();
		display(f_id);
		if (session1 != null) {
	%>

	<table style="margin-top: 200px;" width="1262" border="0">
		<tbody>
			<tr>
				<td colspan="6" bgcolor=""><b><center>
							<font face="verenda" color="#ffffff" size="22">Order-Details</font>
						</center></b></td>
			</tr>
			<tr>
				<th width="210" scope="col"><font size="6px" color="white">Food-ID</font></th>
				<th width="210" scope="col"><font size="6px" color="white">Name</font></th>
				<th width="210" scope="col"><font size="6px" color="white">Type</font></th>
				<th width="210" scope="col"><font size="6px" color="white">Size</font></th>
				<th width="210" scope="col"><font size="6px" color="white">Price</font></th>
				<th width="210" scope="col"><font size="6px" color="white">Quantity</font></th>
			</tr>
			<%
			sum = 0;
				for (int n = 0; n < i; n++) {
					sum = sum + Integer.parseInt(pr[n]) * Integer.parseInt(qty.get(n));
					
			%>
			<tr>

				<td><center><font size="5px" color="white"><%=f_id.get(n)%></font></center></td>
				<td><center><font size="5px" color="white"><%=nm[n]%></font></center></td>
				<td><center><font size="5px" color="white"><%=typ[n]%></font></center></td>
				<td><center><font size="5px" color="white"><%=size[n]%></font></center></td>
				<td><center><font size="5px" color="white"><%=pr[n]%></font></center></td>
				<td><center><font size="5px" color="white"><%=qty.get(n)%></font></center></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<%
		}
		
	%>
	<center><h2><font color="white"><b>Total Amount = </b><%= sum %></font></h2></center>
	<form action=buff.jsp>
	<center><input type=submit value="   Cancel Order   "></center>
	</form>
	<form action=buffer.jsp>
	<br><center><input type=submit value="   ConfirmOrder   "></center>
	</form>
</body>
</html>