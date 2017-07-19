<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*,project.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Connection conn;
void connect() throws Exception {
	Class c = Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "903880");
	// System.out.println("connected..");
}
	   void insert( String oid,String uid,ArrayList<String> fid,String dt )throws Exception {
          Statement stmnt= conn.createStatement();
           int r=stmnt.executeUpdate(" insert into Order11 values('"+oid+"','"+uid+"','"+fid+"','"+dt+"')") ;
           }
	  

%>
<%
  HttpSession session1= request.getSession(false);
  connect();
 add_del ob = new add_del();
 java.util.Date  date = new java.util.Date();
  String oid= ob.generateRandomString();
  String userid= (String)session1.getAttribute("nm");
  ArrayList<String> fid= (ArrayList<String>) session1.getAttribute("order");;
  
  java.util.Calendar calendar = new java.util.GregorianCalendar();
  date = calendar.getTime();
  DateFormat format = new SimpleDateFormat("dd-MM-yyyy");
  String dateval = format.format(date);
  
  insert(oid,userid,fid,dateval);

%>
<jsp:forward page="user.html"></jsp:forward>
</body>
</html>