<%-- 
    Document   : sql
    Created on : 30-Jan-2023, 10:08:34 PM
    Author     : dibyajyotimishra
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
</head>
<body>
    <h1>MySQL dump!</h1>

    <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/RegisterApp" user="root" password="password" var="data"></sql:setDataSource>
    <sql:query dataSource="${data}" var="result">select * from users;</sql:query>

        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <td>id</td>
                    <td>name</td>
                    <td>email</td>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${result.rows}" var="row">
                <tr>
                    <td><c:out value="${row.id}"></c:out></td>
                    <td><c:out value="${row.name}"></c:out></td>
                    <td><c:out value="${row.email}"></c:out></td>
                    </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
