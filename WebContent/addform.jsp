<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>enter_details_Foodlist</title>
</head>
<body background="img/bg.jpg"> 
<form action="add.jsp">
<center>
<table style="margin-top: 200px;" width="1262" border="0"></table>
<strong><font face="verenda" color="#ffffff" size="22">Add Food Item</font></strong>
      <p><strong><font color="white">Name:  </strong><label for="nm"></label><input type="text" name="nm" required id="nm" size="50" maxlength="25" style="width: 250px;"/></p>
      <p><strong>Size:</strong>    <label for="sz"></label><input type="text" name="sz" required id="sz" size="50" maxlength="15" style="width: 270px;"/></p>
     <p><strong>Type:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ" maxlength="10" style="width: 270px;"><option value="----Select----">------------------------------Select----------------------------</option>
      <option value="veg">veg</option>
      <option value="non veg">non veg</option> </select></p>
     <p><strong>Price: </strong>  <label for="pr"></label><input type="number" name="pr"  required id="pr" size="50" maxlength="5" style="width: 270px;"/></p>
      <p><strong>Quantity:</strong> <label for="qty"></label><input type="number" name="qty" required id="qty" size="50" maxlength="4" style="width: 255px;"/></p>
      
      <p><center><input type="submit" name="add"  required id="add" value="     ADD    " /></center></p>
    
</center>
</form>
</body>
</html>
