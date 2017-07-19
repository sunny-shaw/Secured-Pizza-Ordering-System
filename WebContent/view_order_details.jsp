<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show_Order_Details</title>
</head>
<body background = "img/bg.jpg">
<%!
String Oid1[]= new String[100];

String Uid[]= new String[100];
String Od[]= new String[100];
String Fid[]= new String[100];
int i=0;

       
%>
<%! 
  Connection conn;
   void connect1() throws Exception{
	     Class c= Class.forName("oracle.jdbc.driver.OracleDriver") ;
	   conn  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","903880");
    }
   void display()throws Exception {
	    i=0;
	   PreparedStatement ob= conn.prepareStatement("select * from Order11 ");
       ResultSet res= ob.executeQuery();
       while(res.next())
      {  
          Oid1[i]= res.getString("OrderId");
          
          Uid[i]= res.getString("UserId");
          Od[i]= res.getString("OrderDate");
          Fid[i]= res.getString("FoodId");
          i++;
	 }
   }
 %>
<% 
     HttpSession session1 = request.getSession(false);
    String Oid= request.getParameter("OrderId");
    connect1();
    display(); 
%>
  <table  style="margin-top:200px;" width="1355" border="0">
  <tbody>
    <tr>
<td colspan="5" bgcolor="">
    <b><center><font face="Arial Black" color="#ffffff" size="18">Order-Details</font> </center></b>
</td>
</tr>
   <tr>
      <th width="355" scope="col"><font size="6px" color="white">OrderId</font></th>
      <th width="210" scope="col"><font size="6px" color="white">UserId</font></th>
      <th width="210" scope="col"><font size="6px" color="white">FoodId</font></th>
      <th width="300" scope="col"><font size="6px" color="white">OrderDate</font></th>
      
    </tr> 
    <% for(int j=0;j<i;j++) {%>
    	<tr>
        <td><center><font size="5px" color="white"><%= Oid1[j] %></font></center></td>
        <td><center><font size="5px" color="white"><%= Uid[j]  %></font></center></td>
        <td><center><font size="5px" color="white"><%= Fid[j]%></font></center></td>
        <td><center><font size="5px" color="white"><%= Od[j]%></font></center></td>
        
       </tr>
    <% } %>
  </tbody>
     
</table>
<form action="adminpage1.jsp">
   <p align="center">
    <input type="submit" value="Back">
   </p>
</form>
    
</body>
</html>