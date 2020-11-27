package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;


public class insertstation extends HttpServlet 
{

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           HttpSession session=request.getSession(false);
            if(session!=null){
                int flag=0;
                Connection con=link.getConnection();
                String st_id=request.getParameter("id");
                String st_name=request.getParameter("name");
              
                try{
                    PreparedStatement psmt=con.prepareStatement("INSERT INTO STATION(ST_ID,ST_NAME)VALUES(?,?)");
                    psmt.setString(1, st_id);
                    psmt.setString(2, st_name);
                    
                    flag=psmt.executeUpdate();
                    request.setAttribute("msg","VALUES INSERTED");
                    request.getRequestDispatcher("Admin_Home.jsp").forward(request, response);
               }
               catch(Exception e){
               System.out.println(e);
               }
                if(flag==0) {
                    request.setAttribute("msg","Try Again");
                    request.getRequestDispatcher("updatestation.jsp").forward(request, response);
                }
               //request.getRequestDispatcher("Admin_Train.jsp").forward(request, response);
            }
        } 
    
        finally {            
            out.close();
        }
    }
    


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}