<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove_Store</title>
</head>
<body >
<%
     HttpSession session1 = request.getSession(false);
      add_del ob= new add_del();
      String StoreId =request.getParameter("sid");
      ob.connect();
     boolean result= ob.delete(StoreId);
      
%>
<jsp:forward page="view_store_list.jsp"></jsp:forward>
</body>
</html>