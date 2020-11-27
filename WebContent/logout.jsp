<%-- 
    Document   : logout.jsp
    Created on : 29 Jun, 2013, 10:55:34 AM
    Author     : M Pandit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% request.setAttribute("msg",null);
          session = request.getSession(false);
if(session != null)
    session.invalidate();
          response.sendRedirect("loginuser.jsp");

       %>
    </body>
</html>
