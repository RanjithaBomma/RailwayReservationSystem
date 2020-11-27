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
	left: 127px;
	top: 238px;
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
            <form name="form1" method="post" action="adminlogin.jsp">
      </form>
     
      <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
    
     <div id="apDiv1">
         <form name="abc" action="deletestation">
           
            <select name="st_id">
                <option value="stn">Select Station ID</option>
                <%String st_id="";
                String st_name="";
                Connection con=null;
                PreparedStatement psmt=null;
                try{
                    con=link.getConnection();
                    psmt=con.prepareStatement("SELECT ST_ID FROM STATION");
                    ResultSet rs=psmt.executeQuery();
                    while(rs.next()){
                         st_id=rs.getString(1);
                       
                      
                        %>
                        <option value="<%=st_id%>"><%=st_id%>
                   
                        </option><%
                    }
                }catch(Exception e){}
                %>
            </select>
           
            <input type="hidden"  name="st_id" id="st_id" value="<%=st_id%>">
             <input type="hidden" value="<%=st_name%>" name="st_name">
            <input type="submit" value="DELETE">
        </form> <p>&nbsp;</p>
            </div>
    </body>
</html>
