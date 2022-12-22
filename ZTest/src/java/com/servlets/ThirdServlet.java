
package com.servlets;

/**
 *
 * @author dibyajyotimishra
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;


public class ThirdServlet extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        System.out.println("this is a method to handle GET requests...");
        
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        out.println("<h3>This is response of a GET method</h3>");
    }
}
