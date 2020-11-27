<%-- 
    Document   : booktrain
    Created on : 26 Jun, 2013, 5:56:14 PM
    Author     : MANISHA KUMARI
--%>

<%@page import="java.beans.Statement"%>
<%@page import="model.link"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
  
        <%
           String train_id=request.getParameter("train_id");
                String train_date=request.getParameter("train_date");
              String heads=request.getParameter("heads");
                String name=request.getParameter("name");
                String fare=request.getParameter("fare");
               
       Connection con=null;
      ResultSet rs=null;
       ResultSet r=null;
      PreparedStatement psmt=null;
      PreparedStatement psmt2=null;
    
      try
              {  con=link.getConnection();
                
         if(con!=null){
               int a=Integer.parseInt(heads);
                 int b=Integer.parseInt(fare);
                 int amount=a*b;
          psmt=con.prepareStatement("select * from train where train_id=? and seat_avail>=?");
           psmt.setString(1,train_id);
           psmt.setInt(2,a);
             rs=psmt.executeQuery();

        
if(rs.next())

{
            java.sql.Statement stmt=con.createStatement();
            r=stmt.executeQuery("SELECT pnr.NEXTVAL FROM dual");
            String pnr="pnr";
            if(r.next())
                pnr=r.getString(1);
        request.setAttribute("pnr",pnr);
        System.out.println("helloooo");
     PreparedStatement psmt1=null;
     psmt1=con.prepareStatement("insert into reservation(pnr,train_id,no_of_heads,amount,name)values(?,?,?,?,?)");
     psmt1.setString(1,pnr);
     psmt1.setString(2,train_id);
     psmt1.setInt(3,a);
          psmt1.setInt(4,amount);
          psmt1.setString(5,name);
      psmt1.executeUpdate();
      psmt1.close();
      System.out.println("hiiiii");
       java.sql.Statement sm=con.createStatement();
     
      psmt2=con.prepareStatement("update train set seat_avail=seat_avail-? where train_id=?");
      psmt2.setInt(1, a);
      psmt2.setString(2, train_id);
     psmt2.executeUpdate();
     request.setAttribute("pnr",pnr);
   
}
                       
}}catch(Exception e){

    System.out.println(e);
}
%>
      
<%
request.getRequestDispatcher("bookingconfirm.jsp").forward(request, response);%>
   
    </body>
</html>
