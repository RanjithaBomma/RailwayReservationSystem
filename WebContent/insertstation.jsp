<%-- 
    Document   : Admin_Station
    Created on : 24 Jun, 2013, 12:11:49 PM
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
	width: 498px;
	height: 115px;
	z-index: 1;
	left: 276px;
	top: 12px;
}
    #apDiv2 {
	position: absolute;
	width: 754px;
	height: 346px;
	z-index: 1;
	top: 215px;
	left: 198px;
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
      <form name="form1" method="post" action="insertstation">
        <table width="435" border="0">
          <tr>
            <td width="178">Station ID:</td>
            <td width="247"><label for="id"></label>
            <input type="text" name="id" id="id"></td>
          </tr>
          <tr>
            <td>Station Name:</td>
            <td><label for="name"></label>
            <input type="text" name="name" id="name"></td>
          </tr></form>
          <tr>
            <td height="48"><input type="submit" name="addstation" id="addstation" value="Add Station"></td>
            <td>&nbsp;</td>
          </tr>
        </table>
      
   </body>
   
</html>
