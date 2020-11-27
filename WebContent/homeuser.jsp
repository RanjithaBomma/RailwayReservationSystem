<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,model.*,javax.servlet.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Travelling Train</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="Container">
  <div id="header_"> &nbsp;
    <ul class="navi">
       <li><a href="homeuser.jsp">Home</a><l>
      <li><a href="seatenquiry.jsp">Train Enquiry</a></li>
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
     
      <h2>Welcome 
      <%session.setAttribute("user",null);%>
        <% 
                if(request.getAttribute("msg1")!=null){
                    String mmm=(String)request.getAttribute("msg1");
                    String nnn=(String)request.getAttribute("user");
                    out.println(request.getAttribute("msg1"));
                    session.setAttribute("user",nnn);
                 request.setAttribute("msg1",mmm);
                }
            %>
     </h2>
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
