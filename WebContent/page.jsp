<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String but1 = request.getParameter("but1");
%>
<%
if (but1.equals ("ADD")) {
%> 
<jsp:forward page="addform.jsp"></jsp:forward>
<%
}
else if (but1.equals("DELETE")){
%>
<jsp:forward page="deleteform.jsp"></jsp:forward>
}
<%
}
else if (but1.equals("UPDATE")){
%>
<jsp:forward page="updateform.jsp"></jsp:forward>
}
<% 
}
else if (but1.equals("BACK")) {
%> 
<jsp:forward page="adminpage1.jsp"></jsp:forward>
<%}
%>


</body>
</html>