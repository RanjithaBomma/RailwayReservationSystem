/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
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
/**
 *
 * @author M Pandit
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           HttpSession session=request.getSession(false);
            if(session!=null){
                Connection con=link.getConnection();
                String c_id=request.getParameter("c_id");
                String c_name=request.getParameter("c_name");
                String password=request.getParameter("password");
                try{
                    PreparedStatement psmt=con.prepareStatement("SELECT * FROM CUSTOMER WHERE C_ID=? AND C_NAME=? AND PASSWORD=?");
                    psmt.setString(1, c_id);
                    psmt.setString(2, c_name);
                    psmt.setString(3, password);
                    ResultSet rs=psmt.executeQuery();
                    if(rs.next()){
                       session.setAttribute("user",c_id);
                     request.setAttribute("msg1",c_name);
                    request.getRequestDispatcher("homeuser.jsp").forward(request, response);
                    }
                    else{
                        request.setAttribute("msg","wrong id or password");
                        request.getRequestDispatcher("loginuser.jsp").forward(request, response);
                    }
                }catch(Exception e){}
            }
        } finally {            
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
