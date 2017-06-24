/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import com.niit.model.CarInfo;
import com.pro.dao.CarDAOImp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sadik
 */
public class ModifyCarServlet extends HttpServlet {

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
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ModifyCarDetailsServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ModifyCarDetailsServlet at " + request.getContextPath() + "</h1>");
            String cmd = request.getParameter("txtcmd");
            out.println(cmd+"  "+request.getParameter("txtid"));
            CarInfo car = new CarDAOImp().getCarById(Integer.parseInt(request.getParameter("txtid")));
            if(cmd.equals("updt")){
            out.println("<form action=UpdateCar.do method='post'>");
            out.println(" <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">");
            out.println("carMake&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getCarMake() +"' name='carMake' /><br/>");
            out.println("carModel&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getCarModel() +"' name='carModel' /><br/>");
            out.println("variant&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getVariant() +"' name='variant' /><br/>");
            out.println("mfgYear&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getMfgYear() +"' name='mfgYear' /><br/>");
            out.println("carFuel&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getCarFuel() +"' name='carFuel' /><br/>");
            out.println("owners&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getOwners() +"' name='owners' /><br/>");
            out.println("price&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getPrice() +"' name='price' /><br/>");
            out.println("kms&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getKms() +"' name='kms' /><br/>");
            out.println("mileage&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value='"+ car.getMileage() +"' name='mileage' /><br/>");
            out.println("branch&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type='text' value= '"+ car.getBranch() +"' name='branch' /><br/>");
            out.println("<br/>");
            out.println("<input type='hidden' value='" + car.getCarId() + "' name='carId' />");
            out.println("<input type='submit' value='Update' />");
            out.println("</form>");
            }
//            else if (cmd.equals("confdel")){
//                out.println("<script type=text/javascript>if(confirm('are you sure')) {window.location='modify.do?"
//             + "carId=" + request.getParameter("carId")+"&command=confdel';}esle{window.location='BuyingPage.jsp';}</script>");
//            } 
            else if(cmd.equals("del")){
            if(new CarDAOImp().deleteCar(Integer.parseInt(request.getParameter("txtid"))))
            {
                System.out.println("Delete wala block if ");
                out.println("<script type=text/javascript>alert('Car Deleted');</script>");
                response.sendRedirect("ModifyPage.jsp");
            }
            else{
                    out.println("<script type=text/javascript>alert('Fauled to delete car');</script>");
                    response.sendRedirect("ModifyPage.jsp");
                    }
        }
            out.println("</body>");
            out.println("</html>");
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
