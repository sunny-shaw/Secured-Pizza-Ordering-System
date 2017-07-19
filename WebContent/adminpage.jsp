<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Admin</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/fancybox-thumbs.css">
	<link rel="stylesheet" type="text/css" href="css/fancybox-buttons.css">
	<link rel="stylesheet" type="text/css" href="css/fancybox.css">
	<link rel="stylesheet" type="text/css" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link  rel="stylesheet" type="text/css"  href="css/styles.css" >
	<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/fancybox.js"></script>
    <script type="text/javascript" src="js/fancybox-buttons.js"></script>
    <script type="text/javascript" src="js/fancybox-media.js"></script>
    <script type="text/javascript" src="js/fancybox-thumbs.js"></script>
    <script type="text/javascript" src="js/wow.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</head>
<body>
 <%
    HttpSession session1= request.getSession(false);
  %>
	<section class="billboard light">
		<header class="wrapper dark">
			<a href="#"><img class="logo" src="" alt=""/></a>
			
<div id="bg_top">
        <div id="menu">
          <ul>
           
          </ul>
          <div class="clear"></div>
        </div>
		</header>
<style type="text/css">
body,td,th {
	font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
	font-style: inherit;
	font-weight: 300;
	font-size: 14px;
}
</style>

 
<table width="1355" border="5">
  <tbody>   
  <tr>
<td colspan="6" bgcolor="#000000">
    <b><center><font face=" Arial Black " color="#ffffff" size="18"><strong>Welcome Admin !!</strong></font> </center></b>
</td>
</tr>
</tbody>
</table>

<form action="view_order_details.jsp"> 
  <p align="center">
  <input type="submit" name="submit" id="submit" value="Check The Order List">
  </p>
  </form>
  <form action="view_store_list.jsp">
  <p align="center">
   <input type="submit" value="Check The Store List">
</p>
</form>
  
<form action="foodlist.jsp"> 
  <p align="center">
  <input type="submit" name="submit" id="submit" value="Check The Food List">
  </p>
  </form>
  <form action="change_loginstatus.jsp">
      <p align="center">
        <input type="submit" name="submit" id="submit" value="Logout">
     </p>
  </form>
		
		<div class="shadow"></div>
	</section><!--  End billboard  -->


	


	


	


	


	<footer>
		<div class="wrapper">
			<div class="rights">
				<img src="" alt="" class="footer_logo"/>
				<p>© Pizzatarian. All Rights Reserved 2015</p>
			</div>

			<nav>
				<ul>
					<li><a href="#">About</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</nav>
		</div>		
	</footer><!--  End footer  -->
    <script src='../ga.js'></script>
</body>
</html>