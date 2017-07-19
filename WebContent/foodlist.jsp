  <%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food List</title>
</head>
<body  background = "img/bg.jpg">
<form action="page.jsp">
<%!
   String f_id[]=new String[100];
   String typ[]=new String[100];
   String nm[]=new String[100];
   String pr[]=new String[100];
   String sz[]=new String[100];
   String qty[]=new String[100];
   int i=0,j;
 %>
<%!
     Connection conn;
      void connect() throws Exception{
	  Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
         }
		void display()throws Exception{
			i=0;
		
			Statement stmnt = conn.createStatement();
			ResultSet res = stmnt
					.executeQuery("select * from food_list");
			while (res.next()) {
				f_id[i]=res.getString("F_ID");
				nm[i]=res.getString("NM");
				typ[i]=res.getString("TYP");
				pr[i]=res.getString("PR");
				sz[i]=res.getString("SZ");
				qty[i]=res.getString("QTY");
				i++;
			}
		      	
		}
%> 
<%
    connect();
    display();
%>                                                                                                                                                                                                                                                                                                                                                                                                                    
<table  style="margin-top:200px;" width="1262" border="0">
  <tbody>
    <tr>
<td colspan="6" bgcolor="">
   <b><center><font face="verenda" color="#ffffff" size="22">Food-Details</font></center></b>
</td>
</tr>
    <tr>
      <th width="210" scope="col"><font size="6px" color="white">Food-Id</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Name</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Type</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Price</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Size</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Quantity</font></th>
    </tr> <%
    for(int n=0;n<i;n++) {  %>
           <tr>
           <td><center><font size="5px" color="white"><%=f_id[n] %></font></center></td>
           <td><center><font size="5px" color="white"><%=nm[n] %></font></center></td>
           <td><center><font size="5px" color="white"><%=typ[n] %></font></center></td>
           <td><center><font size="5px" color="white"><%=pr[n] %></font></center></td>
           <td><center><font size="5px" color="white"><%=sz[n] %></font></center></td>
           <td><center><font size="5px" color="white"><%=qty[n] %></font></center></td>
         </tr> 
         <%
         
         }%> 
</tbody>
</table>
<br>
<center>
<input type="submit" name="but1" value="ADD" />
<input type="submit" name="but1" value="DELETE" />
<input type="submit" name="but1" value="UPDATE" />
<input type="submit" name="but1" value="BACK" />
</center>
</br>
</body>
</html>