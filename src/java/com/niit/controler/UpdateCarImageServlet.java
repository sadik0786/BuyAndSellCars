/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Sadik
 */
public class UpdateCarImageServlet extends HttpServlet {

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
 String[] fields = null;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          String UPLOAD_DIRECTORY = "images"+File.separator+"car_images";
        System.out.println("Uploading file");
         
            if (ServletFileUpload.isMultipartContent(request)) {
                System.out.println("Starting upload");
                try {
                    System.out.println("Upload Started");
                    List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                    System.out.println("mparts" + multiparts);

                    fields = new String[multiparts.size()];
                    int i = 0;
              String name=null;
                    for (FileItem item : multiparts) {
                        System.out.println("isFormField" + item.isFormField());
                        if (!item.isFormField()) {

                           name = new File(item.getName()).getName();
                            String uploadPath = getServletContext().getRealPath("/")+  UPLOAD_DIRECTORY;
                            System.out.println("name : " + uploadPath + File.separator + name);
                            item.write(new File(uploadPath + File.separator + request.getParameter("carId")+".jpg"));
                            

                            System.out.println("File Uploaded Successfully.......");
                            response.sendRedirect("ManagerPage.jsp");
                        }  
        }
    }
             catch (Exception ex) {
                  Logger.getLogger(UpdateCarImageServlet.class.getName()).log(Level.SEVERE, null, ex);
              }
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

