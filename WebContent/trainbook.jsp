<%-- 
    Document   : bookticket
    Created on : 26 Jun, 2013, 10:23:31 AM
    Author     : M Pandit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Travelling Train</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<% String t1=request.getParameter("trainid");
        String t2=request.getParameter("traindate");
        String t3=request.getParameter("fare");
           %>
<div id="Container">
  <div id="header_"> &nbsp;
    <ul class="navi">
      <li>  <a href="homeuser.jsp">Home</a><l>
      <li><a href="trainenquiry1.jsp">Train Enquiry</a></li>
        <li><a href="seatenquiry.jsp">Seat avilabality </a> </li>
        <li><a href="fareenquiry.jsp">Fare</a></li>
        <li> <a href="cancel.jsp">Cancel</a></li>
        <li><a href="logout.jsp">log out</a></li>
    </ul>
  </div>
  <div id="left_">
    <h2>latest events</h2>
    <p><span>Saturday,</span> Dorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh commodo conse. </p>
    <p>&nbsp;</p>
    <p>Donsectetuer adipiscing elit, sed diam nonummy nibh commodo consequat.</p>
    <p>&nbsp;</p>
    <p><a href="http://www.free-css.com/">read more</a></p>
    <p>&nbsp;</p>
    <p><span>Saturday,</span> Dorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh commdo conseq. </p>
    <p>&nbsp;</p>
  </div>
  <div id="right_">
    <h2>Welcome To Travelling Train!</h2>
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
  <div id="footer1_"> &nbsp;</div>
  <div id="footer2_">
    <p>&nbsp;</p>
    <p>Designed by <a href="http://www.webtemplateportal.com/">WebTemplatePortal.com</a><br />
      This template is under the <a target="_blank" href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attribution 2.5</a> License.<br />
      <br />
      <span>Adipiscing elit sed diam nonummy nibh commodo consequat sit amets. Sorem ipsum dolor sit amet, consectetuer adipiscing.</span></p>
    <p>&nbsp;</p>
    <p><a target="_blank" href="http://validator.w3.org/check?uri=referer"> <img src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" height="31" width="88" border="0" /></a></p>
    <p>&nbsp;</p>
  </div>
  <div id="footer3_"> &nbsp;</div>
</div>
</body>
</html>
