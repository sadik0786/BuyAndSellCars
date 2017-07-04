/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

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
public class Compare extends HttpServlet {

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
            String make1=request.getParameter("txt1");
            String make2=request.getParameter("txt2");
            String model1=request.getParameter("txtm1");
            String model2=request.getParameter("txtm2");
//            int c1 = Integer.parseInt("Car1");
//            int c2 = Integer.parseInt("Car2");
            String c1=request.getParameter("Car1");
            String c2=request.getParameter("Car2");
            
            int car1 = Integer.parseInt(c1.trim());
            int car2 = Integer.parseInt(c2.trim());
            
            System.out.println(make1+" "+make2+" "+model1+" "+model2+" "+c1+" "+c2);
            System.out.println(car1+" "+car2);
            if (car1<car2) {
                System.out.println("car2 is better");
                
                        RequestDispatcher rd = request.getRequestDispatcher("CampareDone.jsp");
                        request.setAttribute("m1", make1);
                        request.setAttribute("m2", make2);
                        request.setAttribute("md1", model1);
                        request.setAttribute("md2", model2);
                        request.setAttribute("c1", "2");
                        rd.forward(request, response);
            }
            else
            {
                System.out.println("car1 is btter");
                        RequestDispatcher rd = request.getRequestDispatcher("CampareDone.jsp");
                        request.setAttribute("m1", make1);
                        request.setAttribute("m2", make2);
                        request.setAttribute("md1", model1);
                        request.setAttribute("md2", model2);
                        request.setAttribute("c1", "1");
                        rd.forward(request, response);
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
