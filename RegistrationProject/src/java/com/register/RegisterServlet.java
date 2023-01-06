package com.register;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author dibyajyotimishra
 */

@MultipartConfig
public class RegisterServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            
            // Extracting form data...
            String userName = request.getParameter("name");
            String userEmail = request.getParameter("email");
            String userPassword = request.getParameter("password");
            Part part = request.getPart("image");
            String fileName = part.getSubmittedFileName();
            
            // Sending data to Database...
            try {
              Thread.sleep(3000);
              
              Class.forName("com.mysql.cj.jdbc.Driver"); 
              
              // DB Connection
              String dburl = "jdbc:mysql://localhost:3306/RegisterApp";
              String dbuserName = "root";
              String dbpassword = "password";
              Connection con = DriverManager.getConnection(dburl, dbuserName, dbpassword);
              
              // Query
              String query = "insert into users(name, email, password, image) values(?, ?, ?, ?)";
              
              PreparedStatement pstmt = con.prepareStatement(query);
              pstmt.setString(1, userName);
              pstmt.setString(2, userEmail);
              pstmt.setString(3, userPassword);
              pstmt.setString(4, fileName);
              
              pstmt.executeUpdate();
              
              // Upload image
              InputStream is = part.getInputStream();
              byte[] imageData = new byte[is.available()];
              is.read(imageData);
              String path = request.getRealPath("/")+"img"+File.separator+fileName;
              FileOutputStream fos = new FileOutputStream(path);
              fos.write(imageData);
              fos.close();
              
              out.println("Success");
              
            } catch (Exception e) {
                e.printStackTrace();
                out.println("Error");
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
