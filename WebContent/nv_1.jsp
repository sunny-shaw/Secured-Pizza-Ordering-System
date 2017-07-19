<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
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
 <input type="hidden" name="id" value="1">
 <div id="section">
 <font color="white">CHEF'S CHICKEN CHOICE
Our chef have something special in store for those who love their chicken and some good veggies to go with it! Dive into a combination of Double Smoked Chicken, Tangy Black olives, Crisp Capsicum and blazing red paprika. This will get you feeling hot hot hot!
      <br><pre>Size: L		M	  S
Price:500	350	  200</pre></font></div>
 <img src="img/chef's chicken choice.jpg" alt="chef's chicken choice" height="298" width="427"> 
 <p><strong>Size:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ"><option ></option>
      <option value="L">Large</option>
       <option value="M">Medium</option> 
       <option value="S">Small</option> </select></p>
       Quantity:<input type="text" align="right"  name="qty" required id="qty">
       <input type="submit" name="add" value="Add">
       
      
 </form>
</body>
</html>