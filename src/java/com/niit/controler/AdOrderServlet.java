/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import com.niit.model.OrderInfo;
import com.pro.dao.OrderDAOImp;
import com.pro.dao.UserDAOImp;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;
import javafx.animation.Animation.Status;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sadik
 */
public class AdOrderServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         //   int orderId =Integer.parseInt(request.getParameter("orderId"));
             Date OrderDate = new Date(Calendar.DATE);
             int carId =Integer.parseInt(request.getParameter("carId"));
             String Status = request.getParameter("Status");
             HttpSession session = request.getSession(false);
             Object loginId= session.getAttribute("loginId");
             if(loginId!=null)
             {
                
                int userId=new UserDAOImp().getUserByLoginId(loginId.toString()).getUserId();  
                System.out.println("OrderDate "+OrderDate+" carId "+carId+" userId "+userId+ " Status " +Status );
                OrderDAOImp DAOImp =new OrderDAOImp();
                OrderInfo order = new OrderInfo( carId, userId,OrderDate,Status );
                int orderId=DAOImp.addOrder(order) ; 
                   
                 if(orderId!=0){
                    System.out.println("Order Booked");
                    request.setAttribute("orderId",orderId );
                    RequestDispatcher rd = request.getRequestDispatcher("OrderDetails.jsp");
                    rd.forward(request, response);
                }
                else
                {
                    System.out.println("Failed to Order Car !");
                    out.println("Failed to Order Car ");
                }
             }
             else
             {
                 response.sendRedirect("LoginPage.jsp");
             }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
