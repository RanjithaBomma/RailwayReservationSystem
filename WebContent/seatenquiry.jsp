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
   
    <br><br><br><br>
    <div id="apDiv3">
        <% String train_id="";
        String source="";
        String destination="";
        String train_date="";%>
        <form name="form1" method="post" action="train.jsp" >
           
                    
      <table width="378" border="0">
        <tr>
          <th>Train ID:</th>
          <th>Source:</th>
          <th>Destination:</th>
          <th>Journey Date:</th>
        </tr>
        
          <tr>
              <td>
            <select name="train_id">
                 <option value="stn">Select Train ID</option>
                  <%
                Connection con=null;
                PreparedStatement psmt=null;
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT TRAIN_ID FROM TRAIN");
                    ResultSet rs=psmt.executeQuery();
                 
                 while(rs.next()){ 
                train_id=rs.getString(1);%>
                     <option value="<%=train_id%>"><%=train_id%></option>
                        <%  }%>
                  </select>
         </td>
        
        
          <td><select name="source">
                       <option value="stn">Select Source</option>
                        <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT DISTINCT SOURCE FROM TRAIN");
                     rs=psmt.executeQuery();%>
                   <%while(rs.next()){ 
                       source=rs.getString(1); %>
                  <option value="<%=source%>"><%=source%></option>
                  <%  }%></select>
          </td>
        
       
          <td>
            
              <select name="destination">
                   <option value="stn">Select Destination</option>
                   <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT DISTINCT DESTINATION FROM TRAIN");
                     rs=psmt.executeQuery();
                  while(rs.next()){ 
                      destination=rs.getString(1);%>
                  <option value="<%=destination%>"><%=destination%></option>
                   <%  }%>
          </select>
          </td>
       
          
          <td>
              <select name="train_date">
                     <option value="stn">Select Date</option>
                     <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT DISTINCT TRAIN_DATE FROM TRAIN");
                     rs=psmt.executeQuery();%>
                  <% while(rs.next()){
                      train_date=rs.getString(1);  %>
                  <option value="<%=train_date%>"><%=train_date%></option>
                   <%  }%>
                   </select>
         </td>
        </tr>
          
                    
                   
               
        <tr>
          <td>
            <input type="submit" name="button" id="button" value="Get Details">
         
         <input type="hidden" name="train_id" id="button" value="<%=train_id%>">
         <input type="hidden" name="source" id="button" value="<%=source%>">
         <input type="hidden" name="destination" id="button" value="<%=destination%>">
         <input type="hidden" name="train_date" id="button" value="<%=train_date%>">
    </td>
          <td>&nbsp;</td>
        </tr>
      </table>
       
           </form> 
      <div id="apDiv4"></div>
    </div>
    </body>
</html>

