<%-- 
    Document   : updatestationconfirm
    Created on : 25 Jun, 2013, 1:04:38 PM
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
	width: 636px;
	height: 314px;
	z-index: 1;
	left: 232px;
	top: 129px;
}
    #apDiv2 {
	position: absolute;
	width: 677px;
	height: 332px;
	z-index: 1;
	top: 73px;
	left: 214px;
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
      
     <div id="apDiv2">
      <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
                   <% 
                if(request.getAttribute("msg")!=null)
                out.println(request.getAttribute("msg"));
                
            %>

      <form name="form1" method="post" action="updatestation">
              
                <%
                Connection con=null;
                PreparedStatement psmt=null;
                 String arr=request.getParameter("st_id");
                try{
                    
                    con=link.getConnection();
                   
                    psmt=con.prepareStatement("SELECT ST_ID, ST_NAME FROM STATION WHERE ST_ID=?");
                    psmt.setString(1, arr);
                    ResultSet rs=psmt.executeQuery();
                    while(rs.next()){
                         String st_id=rs.getString(1);
                        String st_name=rs.getString(2);
                      
                        %>
                        <table width="397" border="0">
                <tr>
            <td>Station ID:</td>
            <td><label for="st_id">
                        <input type="text" name="st_id" id="st_id" value="<%=st_id%>">
                        <input type="hidden" name="st_id" id="st_id" value="<%=st_id%>">
             </label>  </td>
                     
            
          <tr>
            <td>
                Station Name: </td>
            <td><label for="st_name"></label>
                <input type="text" name="st_name" id="st_name" value="<%=st_name%>">
                <input type="hidden" name="st_name" id="st_name" value="<%=st_name%>">
            </td>
          </tr></table><%
                             }}
                catch(Exception e){}
                %>
               
        <br></br>
         
            <input type="submit" name="update" id="update" value="Update">
               &nbsp;
             </form> 
</body>
</html>
