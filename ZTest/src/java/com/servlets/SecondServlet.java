package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author dibyajyotimishra
 */




public class SecondServlet extends GenericServlet {
   
   @Override
   public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
       System.out.println("This Servlet is created using Generic Servlet");
       res.setContentType("text/html");
       PrintWriter out = res.getWriter();
       out.println("<h2>Created using GenericServlet<h2>");

   }
}
