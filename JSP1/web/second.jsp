<%-- 
    Document   : second
    Created on : 10-Jan-2023, 4:58:01 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!--@page Directive 👇🏻 -->
<%@page import="java.util.Random, java.util.ArrayList, java.io.*" %> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--        Directive Tag 👇🏻 -->
        
        <!-- @include Directive 👇🏻  -->
        <%@include file="header.jsp" %>
        
        <h1>Random Number: 
            <% 
                Random random = new Random(); 
                int n = random.nextInt(150);
            
            %>
        
            <%= n %>
            
        </h1>
    </body>
</html>
