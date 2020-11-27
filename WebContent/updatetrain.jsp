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
	left: 227px;
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
      
       <div id="apDiv2">
       <% 
                if(request.getAttribute("msg")!=null)out.println(request.getAttribute("msg"));
            %>
    
     <div id="apDiv1">
         <form name="abc" action="updatetrainconfirm.jsp" >
           
            <select name="train_id">
                <option value="stn">Select Train ID</option>
                <%String train_id="";
                String train_date="";
                Connection con=null;
                PreparedStatement psmt=null;
                try{
                    con=link.getConnection();
                    psmt=con.prepareStatement("SELECT TRAIN_ID,TRAIN_DATE FROM TRAIN");
                    ResultSet rs=psmt.executeQuery();
                    while(rs.next()){
                         train_id=rs.getString(1);
                       train_date=rs.getString(2);
                      
                        %>
                        <option value="<%=train_id%>"><%=train_id%>
                   
                        </option><%
                    }
                }catch(Exception e){}
                %>
            </select>
           <select name="train_date">
                <option value="stn">Select Train Date</option>
                <%
                
                
                try{
                    con=link.getConnection();
                    psmt=con.prepareStatement("SELECT TRAIN_DATE FROM TRAIN");
                    ResultSet rs=psmt.executeQuery();
                    while(rs.next()){
                         train_date=rs.getString(1);
                       
                      
                        %>
                        <option value="<%=train_date%>"><%=train_date%>
                   
                        </option><%
                    }
                }catch(Exception e){}
                %>
            </select>
            <input type="hidden"  name="train_id" id="train_id" value="<%=train_id%>">
             <input type="hidden" value="<%=train_date%>" name="train_date">
            <input type="submit" value="UPDATE">
        </form>
            </div>
    </body>
</html>
