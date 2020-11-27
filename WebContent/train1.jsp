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
</head>
<body>
<div id="Container">
  <div id="header_"> &nbsp;
    <ul class="navi">
     <li><a href="index.html">Home     </a>   </li>
       <li><a href="loginuser.jsp">login</a></li>
      <li><a href="register.jsp">Registration</a></li>
      <li><a href="trainenquiry.jsp">Train Enquiry</a></li>
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
   
     <table width="800" border="1">
    <tr>
    <td>Train ID </td>
    <td>Name</td>
    <td>Source</td>
    <td>Destination</td>
    <td>Seat</td>
    <td>Train Date</td>
   <td>Fare</td>
    </tr> 
    <% 
        String trainid="";
        String traindate="";
        String fare="";

         try {
             
             
            String source=request.getParameter("source");
            String destination=request.getParameter("destination");
             String train_date=request.getParameter("train_date");
             Connection con=null;
             ResultSet rs=null;
             PreparedStatement psmt=null;
                         
          
try{
         con=link.getConnection();
                if(con!=null){
          psmt=con.prepareStatement("select train_id,train_name,source,destination,seat_avail,train_date,fare from train where train_date=? and source=? and destination=? ");
                    
          psmt.setString(1, train_date);
            psmt.setString(2, source);
            psmt.setString(3,destination);    
    rs=psmt.executeQuery();
  

while(rs.next()){
trainid=rs.getString(1);
String name=rs.getString(2);
String source1=rs.getString(3);
String destination1=rs.getString(4);
String seat=rs.getString(5);
traindate=rs.getString(6);
  fare=rs.getString(7);

%>
 
    <tr>
    <td> 
        <%=trainid%></td>
    <td><%=name%></td>
    <td><%=source1%></td>
    <td><%=destination1%></td>
    <td><%=seat%></td>
    <td><%=traindate%></td>
   <td><%=fare%></td>
    </tr>
<%
}
      %>   </table>
    <% if(!rs.next()){
    %> NO DATA <%
    }
          }} catch(Exception e){

    System.out.println(e);
}

        }catch(Exception e){}
         %>
       


  </div>
  <div id="footer3_"> &nbsp;</div>
</div>
</body>
</html>
