<%-- 
    Document   : test
    Created on : 30-Jan-2023, 11:59:30 AM
    Author     : dibyajyotimishra
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test JSP Page</title>
    </head>
    <body>
        <h1>This is the test page!</h1>
        <p><c:out value="${i}"></c:out></p>
    </body>
</html>
