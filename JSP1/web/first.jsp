<%-- 
    Document   : first
    Created on : 10-Jan-2023, 4:05:22 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>First JSP Page!</h1>
        
        
        <!--        Declarative Tag 👇🏻 -->

        <%!
            int a = 2;
            int b = 3;

            String name = "Dibya";

            public int doSum() {
                return a + b;
            }

            public String reverse() {
                StringBuffer sb = new StringBuffer(name);
                return sb.reverse().toString();
            }
        %>

        <!--        Scriptlet Tag 👇🏻 -->
        
        <%
            out.println(a);
            out.println("<br>");
            out.println(b);
            out.println("<br>");
            out.println("Sum is "+ doSum());
            out.println("<br>");
            out.println("Reverse String is "+ reverse());
        %>
        
        <!--        Expression Tag 👇🏻 -->
        
        <h1>Sum of <%= a %> and <%= b %> is: <%= doSum() %></h1>
    </body>
</html>
