<%-- 
    Document   : third
    Created on : 10-Jan-2023, 5:03:01 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Taglib Example: </h1>
        <hr>
        <c:set var="name" value="Babul"></c:set>
        
        <c:out value="${name}"></c:out>
    </body>
</html>
