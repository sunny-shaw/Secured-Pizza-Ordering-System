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
 <input type="hidden" name="id" value="3">
 <div id="section">
 <font color="white">SEVENTH HEAVEN
7 ingredients: one destination- Heaven! A rich riot of color and flavor, this has got it all: Double Smoked Chicken, 

Double Barbeque Chicken, Zesty red and yellow bell peppers, juicy jalapenos, onions and liquid cheesy sauce. 

Indulge away!
      <br><pre>Size: L		M	  S
Price:650	500	  450</pre></font></div>
 <img src="img/chicken mexicana.jpg" alt="seventh heaven" height="298" width="427"> 
  <p><strong>Size:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ"><option ></option>
      <option value="L">Large</option>
       <option value="M">Medium</option> 
       <option value="S">Small</option> </select></p>
       Quantiy:<input type="text" align="right"  name="qty" required id="qty">
 <input type="submit" name="add" value="Add">
 </form>
</body>
</html>