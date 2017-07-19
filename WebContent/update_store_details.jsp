<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="project.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update_Store_Details</title>
</head>
<body>
<%   
      HttpSession session1 = request.getSession(false);
      add_del ob= new add_del();
      String nm= request.getParameter("Name");
     String ph= request.getParameter("MobileNo");
      String st= request.getParameter("Street");
      String state= request.getParameter("State");
      int pin= Integer.parseInt(request.getParameter("Pincode"));
      String sid=(request.getParameter("StoreId"));
      ob.connect();
      ob.update(sid,nm,st,state,pin,ph);
%>
<jsp:forward page="view_store_list.jsp"></jsp:forward>
     
</body>
</html>