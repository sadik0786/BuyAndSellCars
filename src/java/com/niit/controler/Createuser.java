/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import com.niit.model.UserInfo;
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
public class Createuser extends HttpServlet {

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
   String loginid=request.getParameter("loginid");
   String fname=request.getParameter("fname");
   String lname=request.getParameter("lname");
   String email=request.getParameter("email");
   String password=request.getParameter("pass");
   String gender=request.getParameter("gender");
   String mobile=request.getParameter("mob");
   String location=request.getParameter("loca");
   String zipcode=request.getParameter("zip");
   String address=request.getParameter("Add");
   String usertype=request.getParameter("usertype");
   
   System.out.println("loginid "+loginid+" fname "+fname+" lname "+lname+" email "+email+" password "+password+" gender "+gender+
           " mobile "+mobile+ " location "+location+" zipcode "+zipcode+ " address "+address+ " usertype "+usertype);
    
          
   UserDAOImp DAOImp =new UserDAOImp();
   
   UserInfo user= new UserInfo(loginid, fname, lname, email, password, gender, mobile, location, zipcode, address, "Customer");
        
                if(!DAOImp.createUser(user)){
                    System.out.println("User Record Successfully Inserted");
                    RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp");
                    rd.forward(request, response);
                }
            else
                {
                    System.out.println("Failed to create User Record");
                    out.println("Failed to Create User ");
                }
        }
        }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
  }
    }


