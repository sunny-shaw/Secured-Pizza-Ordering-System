<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/fancybox-thumbs.css">
<link rel="stylesheet" type="text/css" href="css/fancybox-buttons.css">
<link rel="stylesheet" type="text/css" href="css/fancybox.css">
<link rel="stylesheet" type="text/css" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/fancybox.js"></script>
<script type="text/javascript" src="js/fancybox-buttons.js"></script>
<script type="text/javascript" src="js/fancybox-media.js"></script>
<script type="text/javascript" src="js/fancybox-thumbs.js"></script>
<script type="text/javascript" src="js/wow.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<style>
#section {
	background-color:black;
	margin-top:0px;
	width: 320px;
	float: center;
	padding: 30px;
}
</style>
</head>
<body>
	<form action="Register.jsp">
		<section class="billboard light"> <header
			class="wrapper dark"> <a href="#"><img class="logo"
			src="" alt="" /></a>

		<div id="bg_top">
			<div id="menu">
				<ul>
					<li><b><a href="index.html" class="active"><strong>Home</a></li>
					<li><a
						href="index.jsp"><strong>Login</a></li>
					<li><b><a href="index.jsp"><strong>Order
									Online</strong></a></li>
					<li><b><a
							href="Registerform.jsp"><strong>Register</strong></a></li>
					<li><b><a href="contact_us.html" class="last_menu"><strong>Contact
									Us</strong></a></b></li>
				</ul>

				<div class="clear"></div>
			</div>
		</header>
		
		<center>
			<div id="section">
				<li class="animated wow fadeInDown" style="margin-top: -26px">
					<center>
						<h1>
							<strong><font color="white">Registration</font></strong>
						</h1>
					</center>
					<body background="" bgcolor="">
						<form action="Register.jsp">
							<span id="sprytextfield1"> <label for="FN"></label> <input
								type="text" name="FN" required id="FN" placeholder="First name"
								maxlength="15"
								style="width: 280px; padding: 6px; border: 1px solid black" />
								<span class="textfieldRequiredMsg">*<br /> <br />
							</span></span>
							<p>
								<span id="sprytextfield2"> <label for="LN"></label> <input
									type="text" name="LN" required id="LN" placeholder="Last name"
									maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br /> <br />
								</span></span>
							</p>
							<p>
								<span id="sprytextfield3"> <label for="DOB"></label> <input
									type="text" name="DOB" required id="DOB"
									placeholder="Date of Birth,DD/MM/YYYY" maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br /> <br /></span></span>
							</p>
							<p>
								<strong><font size="2" color="white">Gender</font></strong> : <input
									type="radio" name="radio" id="male" value="male" /> <label
									for="male"></label> <font size="2" color="white">Male</font> <input
									type="radio" name="radio" id="female" value="female" size="50" />
								<label for="female"></label> <font size="2" color="white">Female</font><br>
								<br>
							</p>
							<p>
								<span id="sprytextfield4"> <label for="ST"></label> <input
									type="text" name="ST" required id="ST"
									placeholder="Flat no.+ Street" maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield5"> <label for="LC"></label> <input
									type="text" name="LC" required id="LC"
									placeholder="Location/land mark" maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield6"> <label for="CTY"></label> <input
									type="text" name="CTY" required id="CTY" placeholder="City"
									maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield7"> <label for="STATE"></label> <input
									type="text" name="STATE" required id="STATE"
									placeholder="State" maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield8"> <label for="PIN"></label> <input
									type="text" name="PIN" required id="PIN" placeholder="Pincode"
									maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield9"> <label for="M_NO"></label> <input
									type="text" name="M_NO" required id="M_NO"
									placeholder="Mobile No." maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield10"> <label for="E_ID"></label> <input
									type="text" name="E_ID" required id="E_ID"
									placeholder="Email Id or Username" maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
								<span id="sprytextfield11"> <label for="PW"></label> <input
									type="password" name="PW" required id="PW"
									placeholder="Password" maxlength="15"
									style="width: 280px; padding: 6px; border: 1px solid black" />
									<span class="textfieldRequiredMsg">*<br> <br></span></span>
							</p>
							<p>
							<center>
								<br /> <input type="submit" name="REGISTER" id="REGISTER" value="  Register  " size="5" />
							</center>
							</p>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
				</li>
				<script type="text/javascript">
					var sprytextfield1 = new Spry.Widget.ValidationTextField(
							"sprytextfield1");
					var sprytextfield2 = new Spry.Widget.ValidationTextField(
							"sprytextfield2");
					var sprytextfield3 = new Spry.Widget.ValidationTextField(
							"sprytextfield3");
					var sprytextfield4 = new Spry.Widget.ValidationTextField(
							"sprytextfield4");
					var sprytextfield5 = new Spry.Widget.ValidationTextField(
							"sprytextfield5");
					var sprytextfield6 = new Spry.Widget.ValidationTextField(
							"sprytextfield6");
					var sprytextfield7 = new Spry.Widget.ValidationTextField(
							"sprytextfield7");
					var sprytextfield8 = new Spry.Widget.ValidationTextField(
							"sprytextfield8");
					var sprytextfield9 = new Spry.Widget.ValidationTextField(
							"sprytextfield9");
					var sprytextfield10 = new Spry.Widget.ValidationTextField(
							"sprytextfield10");
				</script>
			</div>
		</center>

	
		</section>
		<!--  End billboard  -->
	
		<footer style="margin-top:120px">
		<div class="wrapper">
			<div class="rights">
				<img src="" alt="" class="footer_logo" />
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

		</footer>
		<!--  End footer  -->
		<script src='../ga.js'></script>


	</form>
</body>
</html>