<%-- 
    Document   : deletestation
    Created on : 25 Jun, 2013, 11:52:05 AM
    Author     : M Pandit
--%>

<%@page import="model.link"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
#apDiv1 {
	position: absolute;
	width: 235px;
	height: 115px;
	z-index: 1;
	left: 227px;
	top: 138px;
}
#apDiv2 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
}
#apDiv3 {
	position: absolute;
	width: 274px;
	height: 115px;
	z-index: 1;
	left: 220px;
	top: 117px;
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
    </head>
    <body>
        <div id="apDiv5">
      <ul id="MenuBar1" class="MenuBarHorizontal">
      <li><a href="homeuser.jsp">Home</a></li>
        <li><a href="trainenquiry.jsp">Train Enquiry</a></li>
        <li> <a href="seatenquiry.jsp">Seat avilabality   </a>     </li>
        <li><a href="fareenquiry.jsp">Fare Enquiry</a></li>
     <li><a href="cancel.jsp">Cancel</a></li>
       
      </ul>
</div>
    
     <div id="apDiv1">
         <form name="abc" action="cancel">
           
            <select name="pnr">
                <option value="stn">Select PNR</option>
                <%String pnr="";
               
                Connection con=null;
                PreparedStatement psmt=null;
                try{
                    con=link.getConnection();
                    psmt=con.prepareStatement("SELECT pnr FROM reservation");
                    ResultSet rs=psmt.executeQuery();
                    while(rs.next()){
                         pnr=rs.getString(1);
                       
                      
                        %>
                        <option value="<%=pnr%>"><%=pnr%>
                   
                        </option><%
                    }
                }catch(Exception e){}
                %>
            </select>
           
            <input type="hidden"  name="pnr" id="pnr" value="<%=pnr%>">
             
            <input type="submit" value="CANCEL">
        </form>
            </div>
    </body>
</html>

