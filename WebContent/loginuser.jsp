<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Travelling Train</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.button {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background-color:#ededed;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
	border:2px solid #dcdcdc;
	display:inline-block;
	color:#777777;
	font-family:arial;
	font-size:12px;
	font-weight:bold;
	padding:4px 13px;
	text-decoration:none;
	text-shadow:1px 1px 0px #ffffff;
}.button:hover {
	background-color:#dfdfdf;
}.button:active {
	position:relative;
	top:1px;
}
.generic {
     background-color: #dddddd;
     border: Defaultpx dotted #99ff66;
     color: ;
     font-size: 7;
     font-family: ;
     font-style: ;
     font-weight: bold;
     padding: 1px;
     }
</style>
</head>
<body>
<div id="Container">
  <div id="header_"> &nbsp;
    <ul class="navi">
      <li><a href="index.jsp">Home Page</a></li>
      <li><a href="#">login</a></li>
      <li><a href="register.jsp">Registration</a></li>
      <li><a href="trainenquiry.jsp">Train Enquiry</a></li>
      
    </ul>
  </div>
  <div id="left_">
    <h2>Login</h2>
	<%session.setAttribute("user",null);%>
        <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
    <form name="a" method="post" action="loginServlet">
    <p><span>ID:</br></span> <input type="text" name="c_id" class="generic" id="c_id"/></br></br> </p>
   <p><span>NAME:</br></span>
        <input type="text" name="c_name" class="generic" id="c_name"/></br></br></p>
           <p><span>PASSWORD:</br></span><input type="password" name="password" class="generic" id="password"/></br></br></p>
            
      <p><input type="submit" name="signup" class="button" id="signup" value="Submit"></p></br>
    </form>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  </div>
   <div id="right_">
    <h2>REGISTRATION!</h2>
    <form name="a" method="post" action="register">
      <table width="469" border="0">
        <tr>
          <td width="142">ID:</td>
          <td width="317"><label for="id"></label>
          <input type="text" name="c_id" id="c_id" /></td>
        </tr>
        <tr>
          <td>NAME:</td>
          <td><label for="name"></label>
          <input type="text" name="c_name" id="c_name" /></td>
        </tr>
        <tr>
          <td>EMAIL:</td>
          <td><label for="email"></label>
          <input type="text" name="email" id="email" /></td>
        </tr>
        <tr>
          <td>PASSWORD:</td>
          <td><label for="password"></label>
          <input type="password" name="password" id="password" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="submit" class="button" id="register" value="REGISTER" /></td>
        </tr>
      </table>
    
    </form>
    
  
</body>
</html>
