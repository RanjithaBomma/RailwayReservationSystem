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
   
   
    </head>
    <body>
        
         <h1> Welcome to IRCTC </h1>
        
<% 
       
      
         try {
             
          
        
             Connection con=null;
             ResultSet rs=null;
             PreparedStatement psmt=null;
             String pn=(String)request.getAttribute("pnr");             
          
try{
         con=link.getConnection();
                if(con!=null){
         
          psmt=con.prepareStatement("select pnr,train_id,no_of_heads,amount,name from reservation where pnr=? ");
                 psmt.setString(1, pn);    
          
    rs=psmt.executeQuery();
  }



while(rs.next()){
pn=rs.getString(1);
String train_id=rs.getString(2);
String no_of_heads=rs.getString(3);
String amount=rs.getString(4);
String name=rs.getString(5);

%>
<table>
    
    <table width="800" border="1"><tr>
    <td>PNR Number</td>
    <td>Train ID</td>
    <td>Number of Heads</td>
    <td>Amount</td>
    <td>Name</td></tr>
    <tr>
    <td><%=pn%></td>
    <td><%=train_id%></td>
    <td><%=no_of_heads%></td>
    <td><%=amount%></td>
    <td><%=name%></td>
    
    </tr>
<%
}

%>
</table>

<%

}catch(Exception e){

    System.out.println(e);
}
%>
        <%
        }catch(Exception e){}
         %>

    </body>
</html>

