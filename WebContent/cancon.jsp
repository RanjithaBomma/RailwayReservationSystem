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
   
 <%
              
              
       Connection con=null;
  
       ResultSet rs1=null;
    
      con=link.getConnection();
                
         if(con!=null){
                int flag=0;
               
                try{
                    String pnr=request.getParameter("pnr");
     String tict=request.getParameter("tict");
      String fare=request.getParameter("fare");
      String heads=request.getParameter("heads"); 
        int f=Integer.parseInt(fare);
         int h=Integer.parseInt(heads);
            int t=Integer.parseInt(tict);  
            %>
 <%=t%><%
             if(t<h){
            /*Float t1; 
              int t2;             
                t1=(float)(t/2);
                   if(t%2==0)
                 {  
                   t2=(t/2)*f;
                        }
                    else
                      {
                       // t1=t/2+1;
                        t2=(t/2)*f+f;
                                    }*/
                   Float t1,t2;
                   int t3=t*f;
                   t1=(float)(t/2);
                   t2=(float)(t3/2);
                     PreparedStatement psmt2=con.prepareStatement("UPDATE RESERVATION SET NO_OF_HEADS=NO_OF_HEADS-?,AMOUNT=AMOUNT-? WHERE PNR=?");   
                     psmt2.setFloat(1, t1);
                     psmt2.setFloat(2, t2);
                     psmt2.setString(3, pnr);
                      rs1=psmt2.executeQuery();
                     flag=psmt2.executeUpdate();
                                         }
                
                 if(h==t)
                   { java.sql.Statement sm=con.createStatement();
                   PreparedStatement psmt=con.prepareStatement("DELETE FROM RESERVATION WHERE PNR=?");
                    psmt.setString(1, pnr);
                   psmt.executeUpdate();
                   }
                      
                    if(flag!=0)
                                               {
                    request.setAttribute("msg1","TICKET CANCELED");
                   request.getRequestDispatcher("homeuser.jsp").forward(request, response);
                                     }
                  else
            {
                request.setAttribute("msg1","VALUES ARE NOT DELETED");
                    request.getRequestDispatcher("homeuser.jsp").forward(request, response);
               request.getRequestDispatcher("Admin_Train.jsp").forward(request, response);
               }}
               catch(Exception e){}
                
            }
%>
      
<%
//request.getRequestDispatcher("bookingconfirm.jsp").forward(request, response);%>
   

</body>
</html>
