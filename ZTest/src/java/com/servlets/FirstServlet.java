
/**
 *
 * @author dibyajyotimishra
 */


package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;

public class FirstServlet implements Servlet {
    ServletConfig conf;
    
    // Lifecycle methods for all Servlets
    public void init(ServletConfig conf) {
        this.conf = conf;
        System.out.println("creating object...");
    }
    
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("Servicing...");
        
        // set content type of response
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>Today's date: " + new Date().toString() +"<h1>");
        out.println("<h4>Author: DibyajyotiMishra<h4>");
    }
    
    public void destroy() {
        System.out.println("Destroying servlet object...");
    }
    
    
    // Non-Lifecycle methods
    public ServletConfig getServletConfig() {
        return this.conf;
    }
    
    public java.lang.String getServletInfo() {
        return "this servlet is created by DibyajyotiMishra";
    }
}
