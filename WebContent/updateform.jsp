<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body background = "img/bg.jpg"> 
<form action="update.jsp">
<center>
<table  style="margin-top:200px;" width="1355" border="0"></table>
<b><center><strong><font face="Arial Black" color="#ffffff" size="18">Update Food Item</font> </strong></center></b>
      <p><strong><font color="white">Food-Id</strong>: <label for="f_id"></label><input type="text" name="f_id" required id="f_id" size="50"  maxlength="8" style="width: 240px;"/></p>
      <p><strong>Name</strong> :   <label for="nm"></label><input type="text" name="nm" required id="nm" size="50" maxlength="15" style="width: 250px;"/></p>
     <p><strong>Type:  </strong><label for="typ"></label> <label for="typ"></label><select name="typ" required id="typ" maxlength="10" style="width: 256px;"><option value="----Select----">--------------------Select--------------------</option>
      <option value="veg">veg</option>
      <option value="non veg">non veg</option> </select></p>
      <p><strong>Size</strong> :    <label for="sz"></label><input type="text" name="sz" required id="sz" size="50"  maxlength="8" style="width: 260px;"/></p>
      <p><strong>Quantity</strong> :<label for="qty"></label><input type="text" name="qty" required id="qty" size="50" maxlength="4" style="width: 240px;"/></p>
      <p><strong>Price</strong> :   <label for="pr"></label><input type="text" name="pr" required id="pr" size="50" maxlength="4" style="width: 250px;"/></p>
      <p><center><input type="submit" name="update" id="update" value="UPDATE" /></center></p>
      
</center>
</form>
</body>
</html>
