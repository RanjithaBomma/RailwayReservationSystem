<%-- 
    Document   : bookticket
    Created on : 26 Jun, 2013, 10:23:31 AM
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
	width: 545px;
	height: 117px;
	z-index: 1;
	top: 77px;
	left: 183px;
}
    #apDiv2 {
	position: absolute;
	width: 209px;
	height: 115px;
	z-index: 2;
	left: 189px;
	top: 187px;
}

 #apDiv5 {
	position: absolute;
	width: 732px;
	height: 48px;
	z-index: 3;
	left: 51px;
	letter-spacing: normal;
	vertical-align: super;
	word-spacing: normal;
	top: 5px;
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
    <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
    <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    </head>
    <body>
        <% String t1=request.getParameter("trainid");
        String t2=request.getParameter("traindate");
        String t3=request.getParameter("fare");
           %>
        <div id="apDiv5">
      <ul id="MenuBar1" class="MenuBarHorizontal">
        <li><a href="homeuser.jsp">Home     </a>   </li>
        <li><a href="trainenquiry.jsp">Train Enquiry</a></li>
        <li> <a href="seatenquiry.jsp">Seat availabality   </a>     </li>
        <li><a href="fareenquiry.jsp">Fare Enquiry</a></li>
        <li><a href="bookticket.jsp">Cancel</a></li>
       
      </ul>
</div>
    
    <script type="text/javascript">
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

    </script>
   
        <div id="apDiv1">
          <form name="form1" method="post" action="resrvation.jsp">
            <table width="337" border="1">
              <tr>
                <td width="170">Train_ID:</td>
                <td width="151"><label for="train_id"><%=t1%>
                        <input type="hidden" name="train_id" id="train_id" value="<%=t1%>"></label>
                </td>
              </tr>
              <tr>
                <td>Date:</td>
                <td><label for="train_name"><%=t2%></label>
                <input type="hidden" name="train_date" id="train_date" value="<%=t2%>"></td>
              </tr>
              <tr>
                <td>No of Heads:</td>
                <td><span id="sprytextfield1">
                  <label for="heads"></label>
                  <input type="text" name="heads" id="heads">
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
              <tr>
                <td>Name:</td>
                <td><span id="sprytextfield2">
                  <label for="name"></label>
                  <input type="text" name="name" id="name">
                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
              </tr>
            </table>
            <table width="170" border="1">
              <tr>
                <td width="173">Fare:</td>
                <td width="151"><label for="amount"><%=t3%></label>
                <input type="hidden" name="fare" id="fare" value="<%=t3%>"></td>
              
              </tr>
              <tr>
                <td><input type="submit" name="book" id="book" value="Book"></td>
                <td></td>
               
              </tr>
            </table>
          </form>
        </div>
        <h1>&nbsp;</h1>
    <script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
    </script>
    </body>
</html>
