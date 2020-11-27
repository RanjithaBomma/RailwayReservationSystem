<%-- 
    Document   : Admin_Train
    Created on : 24 Jun, 2013, 12:11:24 PM
    Author     : M Pandit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,model.*,javax.servlet.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style type="text/css">
    #apDiv1 {
	position: absolute;
	width: 766px;
	height: 400px;
	z-index: 1;
	left: 139px;
	top: 81px;
}
    #apDiv2 {
	position: absolute;
	width: 679px;
	height: 289px;
	z-index: 1;
	left: 156px;
}
    </style>
    </head>
    <body>
          <table width="643" height="77" border="0">
        <tr>
            
          <td><a href="Admin_Home.jsp">
          Admin Home
          </a></td>
           <td><a href="inserttrain.jsp">
          Add Train
          </a></td>
          <td><a href="updatetrain.jsp">
            Upadate Train
          </a></td>
          <td><a href="deletetrain.jsp">
           Delete Train
          </form></td>
        </tr>
        <tr>
             <td><a href="customer.jsp">
            Customer List
          </a></td>
          <td><a href="insertstation.jsp">
            Add Station
          </a></td>
          <td><a href="updatestation.jsp">
           Update Station
          </form></td>
          <td><a href="deletestation.jsp">
            Delete Station
          </a></td>
        </tr>
      </table>
     
   <div id="apDiv2">
      <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
   <%  String arr=request.getParameter("train_id");%>
     <% 
                if(request.getAttribute("msg")!=null)
                out.println(request.getAttribute("msg"));
            %>
      <form name="form1" method="post" action="updatetrain">
              
                <%
                Connection con=null;
                PreparedStatement psmt=null;
                
                try{
                    con=link.getConnection();
                    psmt=con.prepareStatement("SELECT TRAIN_ID, TRAIN_NAME, SOURCE, DESTINATION, SEAT_AVAIL, TRAIN_DATE, FARE FROM TRAIN WHERE TRAIN_ID=?");
                    psmt.setString(1,arr);
                    ResultSet rs=psmt.executeQuery();
                    while(rs.next()){
                         String train_id=rs.getString(1);
                         String train_name=rs.getString(2);
                         String source=rs.getString(3);
                         String destination=rs.getString(4);
                         String seat=rs.getString(5);
                         String date=rs.getString(6);
                         String fare=rs.getString(7);
                         %>
        <table width="432" border="0">
          <tr>
            <td width="185">Train ID:</td>
            <td width="231"><label for="train_id"></label>
                <input type="text" name="train_id" id="train_id" value="<%=train_id%>"></td>
          </tr>
          <tr>
            <td>Train Name:</td>
            <td><label for="train_name"></label>
            <input type="text" name="train_name" id="train_name" value="<%=train_name%>"></td>
          </tr>
          <tr>
            <td>Source:</td>
            <td><label for="source"></label>
                <input type="text" name="source" id="source" value="<%=source%>"></td>
          </tr>
          <tr>
            <td>Destination:</td>
            <td><label for="destination"></label>
            <input type="text" name="destination" id="destination" value="<%=destination%>"></td>
          </tr>
          <tr>
            <td>Seat Available:</td>
            <td><label for="seat_avail"></label>
            <input type="text" name="seat_avail" id="seat_avail" value="<%=seat%>"></td>
          </tr>
          <tr>
            <td>Journey Date:</td>
            <td><label for="train_date"></label>
            <input type="text" name="train_date" id="train_date" value="<%=date%>"></td>
          </tr>
          <tr>
            <td>Fare:</td>
            <td><label for="train"></label>
            <input type="text" name="fare" id="fare" value="<%=fare%>"></td>
          </tr>
          <tr>
            <td><input type="submit" name="insert" id="insert" value="Insert"></td>
            <td>&nbsp;</td>
          </tr>
        </table><%
                             }}
                catch(Exception e){}
                %>
               
        <br></br>
        
      </form>
    </div>
    </body>
</html>
