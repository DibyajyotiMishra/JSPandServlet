package com.practice;

/**
 *
 * @author dibyajyotimishra
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;



public class RegisterServlet extends HttpServlet {
    
    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        out.println("<h2>Welcome to Register Servlet</h2>");
        String name = req.getParameter("userName");
        String password = req.getParameter("userPassword");
        String email = req.getParameter("userEmail");
        String course = req.getParameter("userCourse");
        String gender = req.getParameter("userGender");
        String condition = req.getParameter("condition");
        
        if(condition != null && condition.equals("checked")) {
            out.println("<h2> name: " + name + "</h2>");
            out.println("<h2> email: " + email + "</h2>");
            out.println("<h2> password: " + password + "</h2>");
            out.println("<h2> course: " + course + "</h2>");
            out.println("<h2> gender: " + gender + "</h2>");
            
            
            // save to DB.
            RequestDispatcher dispatcher = req.getRequestDispatcher("success");
            
            // forward()
            dispatcher.forward(req, res);
            
            
        } else {
            out.println("<h2>Some fields are empty...</h2>");
            
            // include output of index.html
            
            // Get object of RequestDispatcher
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.html");
            
            // include()
            
            dispatcher.include(req, res);
        }
    } 
}
