<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
  Connection conn;
  void connect() throws Exception{
	  Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
  }
  boolean delete(String f_id) throws SQLException {
		Statement stmnt = conn.createStatement();
		int rowcount = stmnt
				.executeUpdate("delete from food_list where F_ID ='" + f_id+"'");
		return true;
	}
 %>
 <%
       String f_id=request.getParameter("f_id");
       connect();
       boolean result=delete(f_id);
%>
<%
if (result==true) {
	out.println("Deleted successfuly!!!!!!!!!!!!!!!");
}
%>  

</body>
</html>