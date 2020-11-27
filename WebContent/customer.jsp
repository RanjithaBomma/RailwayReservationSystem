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
        <li><a href="Admin_Home.jsp">Admin Home</a></li>
        <li><a href="trainenquiry.jsp">Train Enquiry</a></li>
        <li> <a href="seatenquiry.jsp">Seat avilabality   </a> </li>
        <li><a href="fareenquiry.jsp">Fare Enquiry</a></li>
     <li><a href="cancel.jsp">Cancel</a></li>
       
      </ul>
</div>
    
   <br><br><br><br>
    <div id="apDiv3">
        <% String c_id="";
        String c_name="";
        String password="";
        String email_id="";
       
%>
        <form name="form1" method="post" action="" >
            <%
                Connection con=null;
                PreparedStatement psmt=null;
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT C_ID,C_NAME,PASSWORD,EMAIL_ID FROM CUSTOMER");
                    ResultSet rs=psmt.executeQuery();%>
                    
      <table width="378" border="1">
        <tr>
            <th>CUSTOMER ID:</th>
          <th>CUSTOMER NAME:</th>
          <th>PASSWORD</th>
          <th>EMAIL</th>
         
        </tr>
        
          <tr>
              <td>
            <ul>
                 <%
                 while(rs.next()){%>
                     
                     <li><%=c_id%></li>
                        <% c_id=rs.getString(1); }%>
                </ul>  
         </td>
         <td>
                        <%
                
                    con=link.getConnection();
                   psmt=con.prepareStatement("SELECT C_ID,C_NAME,PASSWORD,EMAIL_ID FROM CUSTOMER");
                     rs=psmt.executeQuery();%><ul>
                   <%while(rs.next()){%>
                  <li><%=c_name%></li>
                        <% c_name=rs.getString(2);  }%></ul>
          </td>
        
       
          <td>
            
              
                   <%
                
                  con=link.getConnection();
                   psmt=con.prepareStatement("SELECT C_ID,C_NAME,PASSWORD,EMAIL_ID FROM CUSTOMER");
                     rs=psmt.executeQuery();%><ul>
                   <%while(rs.next()){%>
                  <li><%=password%></li>
                        <% password=rs.getString(3);  }%></ul>
          
          </td>
       
          
          <td>
              
                     <%
                
                   con=link.getConnection();
                   psmt=con.prepareStatement("SELECT C_ID,C_NAME,PASSWORD,EMAIL_ID FROM CUSTOMER");
                     rs=psmt.executeQuery();%><ul>
                   <%while(rs.next()){%>
                  <li><%=email_id%></li>
                        <% email_id=rs.getString(4);  }%></ul>
         </td>
        
        
        
        </tr>
          
                    
                   
               
       
      </table>
       
           </form> 
      <div id="apDiv4"></div>
    </div>
    </body>
</html>

