<%-- 
    Document   : login
    Created on : 24 Jun, 2013, 11:20:28 AM
    Author     : M Pandit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style type="text/css">
    #apDiv1 {
	position: absolute;
	width: 446px;
	height: 54px;
	z-index: 1;
	left: 280px;
	top: 166px;
}
    #apDiv2 {
	position: absolute;
	width: 957px;
	height: 64px;
	z-index: 2;
	top: 88px;
}
 
    </style>
    <link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    body,td,th {
	font-size: 18px;
	color: #09F;
}
body {
	background-color: #FFF;
}
    </style>
    </head>
    <body>
        
          <div id="apDiv2">
        <%session.setAttribute("user",null);%>
        <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
    <form name="a" method="post" action="adminlogin">
            ID:<input type="text" name="a_id" id="a_id"/>
            NAME :
            <input type="text" name="a_name" id="a_name"/>
            password:<input type="password" name="password" id="password"/>
            
        
      <input type="submit" name="signup" id="signup" value="Submit">
    </form></div>
    <div id="apDiv1">
        
      
     <p>&nbsp;</p>
    </div>
    </body>
</html>
