<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "javax.servlet.http.HttpSession"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<style>
#header {
    background-color:;
    color:white;
    text-align:center;
    padding:;
}
#nav {
    line-height:30px;
    background-color:#dddddd;
    margin-top:+200px
    height:600px;
    width:250px;
    float:left;
    padding:5px; 
}
#section {
	margin-top:  100px;
    width:350px;
    float:left;
    padding:30px; 
}
#footer {
    background-color:;
    color:white;
    clear:both;
    text-align:right;
    padding:5px; 
}
</style>
</head>
<body background="img/bg.jpg">
<div id="header">
<p align="center"><h1>Menu</h1></p>
</div>
<div id="nav">
<%
String buff;
HttpSession session1 = request.getSession(false);
buff =(String)session1.getAttribute("Status");
if (buff.equals("on")) {
%>
<form action="user.html">
<input type="submit" value="  Back  ">
</form>
<%}
%>
<h4><u>Non-veg delights:</u></h4><br>
<a href="nv_1.jsp" target="iframe_a">Chef's Chicken Choice</a><br>
<a href="nv_2.jsp" target="iframe_a">Chicken Hawaiian</a><br>
<a href="nv_3.jsp" target="iframe_a">Chicken Mexicana</a><br>
<a href="nv_4.jsp" target="iframe_a">Non-veg Supreme</a><br>
<a href="nv_5.jsp" target="iframe_a">Seventh Heaven</a><br>
<h4><u>Veg delights:</u></h4><br>
<a href="v_1.jsp" target="iframe_a">Chef's Veg Wonder</a><br>
<a href="v_2.jsp" target="iframe_a">Country Special</a><br>
<a href="v_3.jsp" target="iframe_a">Peppy Paneer</a><br>
<a href="v_4.jsp" target="iframe_a">Spicy Triple Tango</a><br>
<a href="v_5.jsp" target="iframe_a">Veg Paradise</a><br><br><br>

</div>
<div id="section">
<iframe width="850" height="500" frameborder=0 src="" name="iframe_a"></iframe>
</div>
<div id="footer">

</div>
</body>
</html>