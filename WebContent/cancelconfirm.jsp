<%-- 
    Document   : trainenquiry
    Created on : 26 Jun, 2013, 9:07:02 AM
    Author     : M Pandit
--%>

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
     <form name="sss" method="post" action="cancon.jsp">
    <% 
        String pnr="";
      String tict="";
         try {
            pnr=request.getParameter("pnr");
             Connection con=null;
             ResultSet rs=null;
             PreparedStatement psmt=null;
        
try{
         con=link.getConnection();
                if(con!=null){
          psmt=con.prepareStatement("select pnr,train_id,no_of_heads,amount,name from reservation where pnr=?");
                 psmt.setString(1, pnr);
                   rs=psmt.executeQuery();
  }
if(rs.next()){
pnr=rs.getString(1);
String train_id=rs.getString(2);
String heads=rs.getString(3);
String amount=rs.getString(4);
String name=rs.getString(5);
 int head=Integer.parseInt(heads);
  int a=Integer.parseInt(amount);
  int fare=a/head;
  int h=Integer.parseInt(heads);
 %> 
     <%=heads%><%=pnr%>
 <%
if(h==0)
       {
%>
       htfyjy
    <%
}
%>

<table width="800" border="1">
    <tr>
    <td>PNR </td>
    <td>TRAIN ID</td>
    <td>NO OF HEADS</td>
    <td>AMOUNT</td>
    <td>NAME</td>
   
    </tr>
    <tr>
    <td><%=pnr%></td>
    <td><%=train_id%></td>
    <td><%=heads%></td>
    <td><%=amount%></td>
    <td><%=name%></td>
   
    </tr>
    </table>
    <table width="800" border="1">
<tr><td>  <%%> <input type="hidden"  name="pnr" id="pnr" value="<%=pnr%>">
             Enter Number of Tickets <input type="text"  name="tict" id="tict">
                 <input type="hidden"  name="fare" id="fare" value="<%=fare%>">
                   <input type="hidden"  name="heads" id="heads" value="<%=heads%>">  
             <input type="submit" name="submit" id="submit" value="Confirm Cancelation">
           
    </td></tr>
</table>

             
<%
}
}catch(Exception e){

    System.out.println(e);
}
%>
        <%
        }catch(Exception e){}
         %>
       
 
  </form>
  </div>


</body>
</html>
