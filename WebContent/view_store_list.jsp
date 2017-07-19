<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Store_list</title>
</head>
<body background = "img/bg.jpg">
<%!
   String Name[]= new String[100];
   String Street[]= new String[100];
   int Pincode[]= new int[100];
   String MobileNo[]= new String[100];
   String State[]= new String[100];
   String StoreId[]= new String[100];
   int i=0;
 %>
<%! 
  Connection conn;
   void connect() throws Exception{
	     Class c= Class.forName("oracle.jdbc.driver.OracleDriver") ;
	   conn  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","903880");
    }
   void display()throws Exception {
	   i=0;
	   PreparedStatement ob= conn.prepareStatement("select  * from STORE1");
     ResultSet res= ob.executeQuery();
     while(res.next())
     {  
          Name[i]= res.getString("Name");
          StoreId[i]= res.getString("StoreId");
          Pincode[i]= res.getInt("Pincode");
          MobileNo[i]= res.getString("Mobileno");
          Street[i]= res.getString("Street");
          State[i]= res.getString("State");
          i++;
	}
       
   }
%>
<%
   HttpSession session1 = request.getSession(false);
   session1.setMaxInactiveInterval(20);
   connect();
   display(); 
%>
<table style="margin-top:200px;" width="1355" border="0">
  <tbody>
    <tr>
<td colspan="6" bgcolor="">
    <b><center><font face="Arial Black " color="#ffffff" size="18">Store-Details</font> </center></b>
</td>
</tr>
   <tr>
      <th width="200" scope="col"><font size="6px" color="white">store-id</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Name</font></th>
      <th width="290" scope="col"><font size="6px" color="white">Street</font></th>
      <th width="200" scope="col"><font size="6px" color="white">State</font></th>
      <th width="210" scope="col"><font size="6px" color="white">Pin-code</font></th>
      <th width="255" scope="col"><font size="6px" color="white"><p>Mobile-no</p></font></th>
    </tr> <%
    for(int n=0;n<i;n++) { %>
    	<tr>
        <td><center><font size="5px" color="white"><%=StoreId[n] %></font></center></td>
        <td><center><font size="5px" color="white"><%=Name[n]  %></font></center></td>
        <td><center><font size="5px" color="white"><%=Street[n]  %></font></center></td>
        <td><center><font size="5px" color="white"><%=State[n]  %></font></center></td>
        <td><center><font size="5px" color="white"><%= Pincode[n] %></font></center></td>
        <td><center><font size="5px" color="white"><%=MobileNo[n] %></font></center></td>
      </tr>
    <%
    }
      
    %>
  </tbody>
     
</table>
<form action="enter_storedetails_insert.jsp">
<p align="center">
  <input type="submit" name="submit" id="submit" value="ADD" >
</p>
 </form>
 <form action="enter_storedetails_update.jsp">
<p align="center">
  <input type="submit" name="submit" id="submit" value="Update" >
</p>
 </form>
 
 <form action="enter_storedetails_delete.jsp"> 
  <p align="center">
  <input type="submit" name="submit" id="submit" value="Delete">
  </p>
  </form>
  <form action="adminpage1.jsp"> 
  <p align="center">
  <input type="submit" name="submit" id="submit" value="Back">
  </p>
  </form>
</body>
</html>