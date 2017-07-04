/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import com.niit.model.CarInfo;
import com.pro.dao.CarDAOImp;
import com.pro.dao.OrderDAOImp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sadik
 */
public class ConfirmOrderServlet extends HttpServlet {

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
        int carId=Integer.parseInt(request.getParameter("txtid"));
    
            System.out.println("Servlet hai");
          
         System.out.println("carId "+carId);
         
     OrderDAOImp order = new OrderDAOImp();
//               boolean confirm=order.confirmOrder(carId) ;
//               System.out.println("BOOLIAN  conf is "+confirm);
                 if(order.confirmOrder(carId)){
                    System.out.println("User Successfully Confirmed Our Record");
                    request.setAttribute("carId",carId );
                    RequestDispatcher rd = request.getRequestDispatcher("ConfOrder.jsp");
                    rd.forward(request, response);
                }
            else
                {
                    
                    System.out.println("Failed to Confirm Order !");
                    out.println("Failed to Order ");
                    RequestDispatcher rd = request.getRequestDispatcher("CancelOrder.jsp");
                    rd.forward(request, response);
                    System.out.println("Failed to Confirm Order !");
                    out.println("Failed to Order ");
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
