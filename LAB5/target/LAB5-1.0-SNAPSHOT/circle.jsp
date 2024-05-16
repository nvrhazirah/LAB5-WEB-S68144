<%-- 
    Document   : circle
    Created on : 15 May 2024, 2:47:20 PM
    Author     : zira
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Circle Calculator</title>
</head>
<body>
    <h1>Circle</h1>
    <form action="" method="post">
        <label for="radius">Enter the radius of the circle:</label>
        <input type="number" id="radius" name="radius" step="any" required>
        <br>
        <button type="submit">Calculate</button>
    </form>

    <%-- Calculate area and perimeter using JSTL --%>
    <c:if test="${not empty param.radius}">
        <%-- Get the radius from the form --%>
        <c:set var="radius" value="${param.radius}" />
        <%-- Calculate area and perimeter --%>
        <c:set var="area" value="${(3.14159265359 * radius * radius)}" />
        <c:set var="perimeter" value="${(2 * 3.14159265359 * radius)}" />
        
        <p>Area of the circle: <fmt:formatNumber value="${area}" pattern="#.###"/></p>
        <p>Perimeter of the circle: <fmt:formatNumber value="${perimeter}" pattern="#.###"/></p>
    </c:if>
</body>
</html>


