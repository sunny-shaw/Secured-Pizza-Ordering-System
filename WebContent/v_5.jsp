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
 <input type="hidden" name="id" value="10">
 <div id="section">
 <font color="white">VEGGIE PARADISE
For vegetarians who love their extravagance, we have a combination of 4 premium vegetables and cheese. Juicy 

Mediterranean black olives, crisp capsicum, fresh baby corn fiery Red Paprika. The Gods would probably
drool over this one!!
      <br><pre>Size: L		M	  S
Price:500	430	  400</pre></font></div>
 <img src="img/veg paradise.jpg" alt="veg paradise" height="298" width="427"> 
  <p><strong>Size:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ"><option ></option>
      <option value="L">Large</option>
       <option value="M">Medium</option> 
       <option value="S">Small</option> </select></p>
       Quantiy:<input type="text" align="right"  name="qty" required id="qty">
 <input type="submit" name="add" value="Add">
 </form>
</body>
</html>