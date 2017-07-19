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
 <input type="hidden" name="id" value="9">
 <div id="section">
 <font color="white">
SPICY TRIPLE TANGO
Get ready for a triple flavor treat! Sweet golden corn mingled with tangy Gherkins and luscious red paprika will make 

your taste buds do the tango.
      <br><pre>Size: L		M	  S
Price:430	390	  360</pre></font></div>
 <img src="img/spicy triple tango.jpg" alt="spicy triple tango" height="298" width="427"> 
  <p><strong>Size:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ"><option ></option>
      <option value="L">Large</option>
       <option value="M">Medium</option> 
       <option value="S">Small</option> </select></p>
       Quantiy:<input type="text" align="right"  name="qty" required id="qty">
 <input type="submit" name="add" value="Add">
 </form>
</body>
</html>