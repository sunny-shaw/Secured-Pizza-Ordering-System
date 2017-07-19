<%@ page import="java.sql.*,java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
  Connection conn;
  private static final String List="123456";
  private static final int List_len=6;
  void connect() throws Exception{
	  Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
  }
  boolean insert(String f_id, String nm,String typ,String pr,String sz,String qty) throws SQLException {
		Statement stmnt = conn.createStatement();
		int rowcount = stmnt
				.executeUpdate("insert into food_list values ('" + f_id
						+ "', '" + nm+ "','"+ typ+ "','"+pr + "','"+ sz+ "','"+qty + "' )");
		return true;
	}
   String generateRandomString() {
 	 StringBuffer randstr= new StringBuffer();
 	 Random rnd = new Random();
 	 for(int i=0;i<List_len;i++) {
 		  int n= rnd.nextInt(6);
 		  char ch= List.charAt(n);
 		  randstr.append(ch);
 	 }
 	    return randstr.toString();
  }
  %>
  <%
    String f_id= generateRandomString(); 
    String nm=request.getParameter("nm");
    String typ=request.getParameter("typ");
    String sz=request.getParameter("sz");
    String qty=request.getParameter("qty");
    String pr=request.getParameter("pr");
    connect();
    boolean result=insert(f_id,nm,typ,pr,sz,qty);
  %>
  <%
if (result==true) {
	out.println("Added successfuly!!!!!!!!!!!!!!!");
}
%> 
</body>
</html>