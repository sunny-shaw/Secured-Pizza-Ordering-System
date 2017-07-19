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
				"jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
  }
   boolean update(String f_id,String nm,String typ,String pr,String sz, String qty) throws SQLException {
	   Statement stmnt = conn.createStatement();
		int rowcount = stmnt
				.executeUpdate("update food_list set nm = '" + nm
						+ "',typ = '" + typ
						+ "',pr = '" + pr
						+ "',sz = '" + sz
						+ "',qty = '" + qty
						+ "' where F_ID =" + f_id);
		return true;
   }	
%>
<%
    String f_id=request.getParameter("f_id");
    String nm=request.getParameter("nm");
    String typ=request.getParameter("typ");
    String sz=request.getParameter("sz");
    String qty=request.getParameter("qty");
    String pr=request.getParameter("pr");
    connect();
    boolean result=update(f_id,nm,typ,pr,sz,qty);
  %>
<%
if (result==true) {
	out.println("Updated successfuly!!!!!!!!!!!!!!!");
}
%>    

</body>
</html>