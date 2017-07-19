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
 <input type="hidden" name="id" value="6">
 <div id="section">
 <font color="white">CHEF'S VEG WONDER  
 
Not just a pizza but also a vegetarian gourmet affair! Our chef have put together the choicest vegetables to give 

you a fine dining pizza experience. Bite into a blend of tender Mushrooms, tangy Gherkins, crunchy
Babycorn, Crisp Capsicum, fiery Red Paprika, Paneer and yummy liquid cheesy sauce. Yes, all in one pizza. Wonder 

indeed!
      <br><pre>Size: L		M	  S
Price:450	375	  300</pre></font></div>
 <img src="img/chef's veg wonder.jpg" alt="chef's veg wonder" height="298" width="427"> 
  <p><strong>Size:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ"><option ></option>
      <option value="L">Large</option>
       <option value="M">Medium</option> 
       <option value="S">Small</option> </select></p>
       Quantiy:<input type="text" align="right"  name="qty" required id="qty">
 <input type="submit" name="add" value="Add">
 </form>
</body>
</html>