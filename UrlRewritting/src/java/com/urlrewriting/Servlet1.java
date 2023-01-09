package com.urlrewriting;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dibyajyotimishra
 */
public class Servlet1 extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet1</title>");  
            out.println("<link rel=\"stylesheet\" href=\"https://unpkg.com/@blaze/css@12.2.0/dist/blaze/blaze.css\">");
            out.println("</head>");
            out.println("<body>");
            
            // Fetch the name
            String name = request.getParameter("username");
            out.println("<h1>Your Name is: " + name + "</h1>");
            
            // Performing url-rewriting...
            out.println("<a class=\"c-button\" href='servlet2?user="+ name+"'>Go to Servlet 2</a>");
            
            out.println("<p>OR</p>");
            
            // Performing Hidden form field...
            /** 
             * Step 1: Change the input field type to <code>hidden</code>
             * Step 2: Set the value of the input field to the value from request's parameter.
             */
            out.println(""
                    + "<form action='servlet2' class=\"o-container o-container--xsmall c-card u-high\">"
                    + "<header class=\"c-card__header\">"
                    + "<h2 class=\"c-heading\">"
                    + "Hidden Form Field Example"
                    + "</h2>"
                    + "</header>"
                    + "<div class=\"c-card__body\">"
                    + "<div class=\"o-form-element\">"
                    + "<label class=\"c-label\">"
                    + "Name:"
                    + "<input class=\"c-field c-field--label\" type=\"hidden\" name=\"user\" value='" + name + "'placeholder=\"e.g. John Doe\" />"
                    + "<div role=\"tooltip\" class=\"c-hint\">"
                    + "The name we would refer you with"
                    + "</div>"
                    + "</label>"
                    + "</div>"
                    + "</div>"
                    + "<footer class=\"c-card__footer\">"
                    + "<button type=\"submit\" class=\"c-button c-button--brand c-button--block\">"
                    + "Go to Servlet 2"
                    + "</button>"
                    + "</footer>"
                    + "</form>"
            
            );
            
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
