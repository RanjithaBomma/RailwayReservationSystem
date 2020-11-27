<%-- 
    Document   : trainenquiry
    Created on : 26 Jun, 2013, 9:07:02 AM
    Author     : M Pandit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,model.*"%>

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
   
  
        
<% 
       
      
         try {
             
          
        
             Connection con=null;
             ResultSet rs=null;
             PreparedStatement psmt=null;
             String pn=(String)request.getAttribute("pnr");             
          
try{
         con=link.getConnection();
                if(con!=null){
         
          psmt=con.prepareStatement("select pnr,train_id,no_of_heads,amount,name from reservation where pnr=? ");
                 psmt.setString(1, pn);    
          
    rs=psmt.executeQuery();
  }



while(rs.next()){
    
pn=rs.getString(1);
String train_id=rs.getString(2);
String no_of_heads=rs.getString(3);
String amount=rs.getString(4);
String name=rs.getString(5);
%>
<table>
    
    <table width="800" border="1"><tr>
    <td>PNR Number</td>
    <td>Train ID</td>
    <td>Number of Heads</td>
    <td>Amount</td>
    <td>Name</td></tr>
    <tr>
    <td><%=pn%></td>
    <td><%=train_id%></td>
    <td><%=no_of_heads%></td>
    <td><%=amount%></td>
    <td><%=name%></td>
    
    </tr>
<%
}

%>
</table>

<%

}catch(Exception e){

    System.out.println(e);
}
%>
        <%
        }catch(Exception e){}
         %>

      <div id="apDiv4"></div>
    </div>
</body>
</html>
