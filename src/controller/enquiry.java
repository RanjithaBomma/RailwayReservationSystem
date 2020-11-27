package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

public class enquiry extends HttpServlet 
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
                String train_id;
               
                 train_id=request.getParameter("train_id2");
            
                try{
                    PreparedStatement psmt;
                    psmt = con.prepareStatement("SELECT TRAIN_ID,TRAIN_NAME,SOURCE,DESTINATION,TRAIN_DATE,FARE FROM TRAIN WHERE TRAIN_ID=? SOURCE=? DESTINATION=? TRAIN_DATE=?");
                    psmt.setString(1, train_id);
                   
                        
                    flag=psmt.executeUpdate();
                    request.setAttribute("msg","VALUES DELETED");
                    request.getRequestDispatcher("Admin_Home.jsp").forward(request, response);
               }
               catch(Exception e){}
                if(flag==0){request.setAttribute("msg","VALUES ARE NOT DELETED");
                    request.getRequestDispatcher("Admin_Train.jsp").forward(request, response);
               //request.getRequestDispatcher("Admin_Train.jsp").forward(request, response);
            }}
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