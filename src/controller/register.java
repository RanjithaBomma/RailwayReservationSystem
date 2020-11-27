
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

public class register extends HttpServlet 
{

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           HttpSession session=request.getSession(false);
            if(session!=null){
                int flag=0;
                Connection con=link.getConnection();
                String c_id=request.getParameter("c_id");
                String c_name=request.getParameter("c_name");
                String password=request.getParameter("password");
                String email_id=request.getParameter("email_id");
                
                try{
                    PreparedStatement psmt=con.prepareStatement("INSERT INTO CUSTOMER(C_ID,C_NAME,PASSWORD,EMAIL_ID)VALUES(?,?,?,?)");
                    psmt.setString(1, c_id);
                    psmt.setString(2, c_name);
                    psmt.setString(3, password);
                    psmt.setString(4, email_id);
                    
                    flag=psmt.executeUpdate();
                    request.setAttribute("msg","REGISTATION SUCCESSFULL");
                    request.getRequestDispatcher("loginuser.jsp").forward(request, response);
               }
               catch(Exception e){}
                if(flag==0) {
                    request.setAttribute("msg","SOME PROBLEM OCCURED PLEASE TRY AGAIN");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
               //request.getRequestDispatcher("Admin_Train.jsp").forward(request, response);
            }
        } 
        
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
