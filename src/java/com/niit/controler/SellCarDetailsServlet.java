/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import com.niit.model.CarInfo;
import com.niit.model.UserInfo;
import com.pro.dao.CarDAOImp;
import com.pro.dao.UserDAOImp;
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
public class SellCarDetailsServlet extends HttpServlet {

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
 //    int carId=Integer.parseInt(request.getParameter("userId"));
    String carMake =request.getParameter("carMake");
    String carModel =request.getParameter("carModel");
    String variant =request.getParameter("variant");
    String mfgYear =request.getParameter("mfgYear");
    String carFuel =request.getParameter("carFuel");
    String owners =request.getParameter("owners");

    int price = Integer.parseInt(request.getParameter("price"));
    int kms =Integer.parseInt(request.getParameter("kms"));
    int mileage =Integer.parseInt(request.getParameter("mileage"));
    String branch =request.getParameter("branch");
    System.out.println(" carMake "+carMake+" carModel "+carModel+" varient "+variant+" mfgYear "+mfgYear+
                    " carFuel "+carFuel+ " owners "+owners+ " price "+price+ " kms "+kms+ " mileage "+mileage+ " branch "+branch);

    CarDAOImp DAOImp =new CarDAOImp();
    
     CarInfo car = new CarInfo( carMake, carModel, variant, mfgYear, carFuel, owners, price, kms, mileage,branch );
                     int carId=DAOImp.addCar(car) ;
                     if(carId!=0){
                    System.out.println("User Sell Record Successfully Inserted");
                    request.setAttribute("carId",carId );
                    RequestDispatcher rd = request.getRequestDispatcher("UploadFile.jsp");
                    rd.forward(request, response);
                }
            else
                {
                    System.out.println("Failed to Sell Car Record!");
                    out.println("Failed to Sell Car ");
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
