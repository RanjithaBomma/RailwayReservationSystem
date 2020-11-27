<%-- 
    Document   : trainenquiry
    Created on : 26 Jun, 2013, 9:07:02 AM
    Author     : M Pandit
--%>

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
	width: 579px;
	height: 150px;
	z-index: 1;
	left: 80px;
	top: 65px;
}
    #apDiv2 {
	position: absolute;
	width: 581px;
	height: 155px;
	z-index: 2;
	left: 77px;
	top: 257px;
}
    #apDiv3 {
	position: absolute;
	width: 638px;
	height: 158px;
	z-index: 1;
	left: 224px;
	top: 105px;
}
    #apDiv4 {
	position: absolute;
	width: 639px;
	height: 48px;
	z-index: 1;
	top: 213px;
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
    
   <br><br><br><br>
    <div id="apDiv3">
        <% String train_id="";
        String source="";
        String destination="";
        String train_date="";%>
        <form name="form1" method="post" action="train.jsp" >
            <%
                Connection con=null;
                PreparedStatement psmt=null;
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT TRAIN_ID,SOURCE,DESTINATION,TRAIN_DATE FROM TRAIN");
                    ResultSet rs=psmt.executeQuery();%>
                    
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
                 while(rs.next()){%>
                     <option value="<%=train_id%>"><%=train_id%></option>
                        <% train_id=rs.getString(1); }%>
                  
         </td>
        
        
          <td><select name="source">
                       <option value="stn">Select Source</option>
                        <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT TRAIN_ID,SOURCE,DESTINATION,TRAIN_DATE FROM TRAIN");
                     rs=psmt.executeQuery();%>
                   <%while(rs.next()){%>
                  <option value="<%=source%>"><%=source%></option>
                  <% source=rs.getString(2); }%>
          </td>
        
       
          <td>
            
              <select name="detination">
                   <option value="stn">Select Destination</option>
                   <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT TRAIN_ID,SOURCE,DESTINATION,TRAIN_DATE FROM TRAIN");
                     rs=psmt.executeQuery();%>
                     <% while(rs.next()){ %>
                  <option value="<%=destination%>"><%=destination%></option>
                    <% destination=rs.getString(3); }%>
          
          </td>
       
          
          <td>
              <select name="train_date">
                     <option value="stn">Select Date</option>
                     <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT TRAIN_ID,SOURCE,DESTINATION,TRAIN_DATE FROM TRAIN");
                     rs=psmt.executeQuery();%>
                  <% while(rs.next()){ %>
                  <option value="<%=train_date%>"><%=train_date%></option>
                   <% train_date=rs.getString(4); }%>
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

