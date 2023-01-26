package com.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dibyajyotimishra
 */
public class Authenticator implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
  
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        // Typecast ServletRequest -> HttpServletRequest
        HttpServletRequest httpRequest = (HttpServletRequest)request;
        
        // Get the session object from the request
        HttpSession session = httpRequest.getSession();
        
        // Store it in a User type variable.
        // Create a custom type of User 
        User user = (User) session.getAttribute("user");
        
        if(user != null && user.getType().equals("teacher")) {
            chain.doFilter(request, response);
        }
        else {
            response.setContentType("text/html");
            response.getWriter().println("Login to View this Page");
        }
    }

    @Override
    public void destroy() {
        
    }
    
}
