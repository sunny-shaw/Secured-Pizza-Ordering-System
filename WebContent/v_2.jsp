<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#section {
	background-color:black;
	margin-top:70px;
	width: 200px;
	float: right;
	padding: 50px;
}
</style>
</head>
<body>
<form action="/Pizzatarian_login/cart">
 <input type="hidden" name="id" value="7">
  <div id="section">
 <font color="white">COUNTRY SPECIAL
For all those with a partiality for veggies, this one's loaded - crunchy onions, crisp capsicum and fresh juicy 

tomatoes. Yum!
      <br><pre>Size: L		M	  S
Price:420	340	  310</pre></font></div>
 <img src="img/country special.jpg" alt="country special" height="298" width="427">
  <p><strong>Size:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ"><option ></option>
      <option value="L">Large</option>
       <option value="M">Medium</option> 
       <option value="S">Small</option> </select></p>
       Quantiy:<input type="text" align="right"  name="qty" required id="qty"> 
 <input type="submit" name="add" value="Add">
 </form>
</body>
</html>