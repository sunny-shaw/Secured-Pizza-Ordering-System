<%@ page import="project.*,java.util.ArrayList" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String nm=request.getParameter("nm");
String pw=request.getParameter("pw");
Login ob = new Login();
ob.connect();


String result=ob.login(nm,pw);
%>
<% 
if(result.equals("user")){
	HttpSession session1= request.getSession(true);
	session1.setAttribute("nm", nm) ;
	ArrayList<String> pid = new ArrayList<String>();
	ArrayList<String> qty = new ArrayList<String>();
	session1.setAttribute("order", pid);
	session1.setAttribute("quantity",qty);
	String buff = "on";
	session1.setAttribute("Status", buff);
	
%>

<jsp:forward page="user.html"></jsp:forward>
<% 
}
else if(result.equals("admin")) {
	HttpSession session1= request.getSession(true);
	session1.setAttribute("nm", nm) ;
	String buff = "on";
	session1.setAttribute("Status", buff);
	%>
	
	<jsp:forward page="adminpage1.jsp"></jsp:forward>
<% }
else{
	%>
	<jsp:forward page="error.jsp"></jsp:forward>
<%}
%>

</body>
</html>