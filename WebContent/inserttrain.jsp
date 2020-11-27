<%-- 
    Document   : Admin_Train
    Created on : 24 Jun, 2013, 12:11:24 PM
    Author     : M Pandit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body>  <table width="643" height="77" border="0">
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
            <form name="form1" method="post" action="adminlogin.jsp">
      </form>
     
    <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
    <div id="apDiv2">
      <form name="form1" method="post" action="insertservlet">
        <table width="432" border="1">
          <tr>
            <td width="185">Train ID:</td>
            <td width="231"><label for="train_id"></label>
            <input type="text" name="train_id" id="train_id"></td>
          </tr>
          <tr>
            <td>Train Name:</td>
            <td><label for="train_name"></label>
            <input type="text" name="train_name" id="train_name"></td>
          </tr>
          <tr>
            <td>Source:</td>
            <td><label for="source"></label>
            <input type="text" name="source" id="source"></td>
          </tr>
          <tr>
            <td>Destination:</td>
            <td><label for="destination"></label>
            <input type="text" name="destination" id="destination"></td>
          </tr>
          <tr>
            <td>Seat Available:</td>
            <td><label for="seat_avail"></label>
            <input type="text" name="seat_avail" id="seat_avail"></td>
          </tr>
          <tr>
            <td>Journey Date:</td>
            <td><label for="train_date"></label>
            <input type="text" name="train_date" id="train_date"></td>
          </tr>
          <tr>
            <td>Fare:</td>
            <td><label for="train"></label>
            <input type="text" name="fare" id="fare"></td>
          </tr>
          <tr>
            <td><input type="submit" name="insert" id="insert" value="Insert"></td>
            <td>&nbsp;</td>
          </tr>
        </table>
          
      </form>
    </div>
    </body>
</html>
