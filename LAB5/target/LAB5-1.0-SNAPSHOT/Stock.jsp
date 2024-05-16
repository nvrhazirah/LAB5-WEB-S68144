<%-- 
    Document   : Stock
    Created on : 15 May 2024, 2:48:29 PM
    Author     : zira
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Calculate Stock Price  </h1>

        <%!
            int stock = 800;
            double price = 10.50;
            double commision = 0.05;
            double ori_price;
            double com_price;
            double totalpay;

        %>

        <%
            ori_price = stock * price;
            com_price = ori_price * commision;
            totalpay = com_price + ori_price;

        %>

        <c:set var ="stock" value="<%=stock%>"/>
        <c:set var ="price" value="<%=price%>"/>
        <c:set var ="commision" value="<%=commision%>"/>
        <c:set var ="ori_price" value="<%=ori_price%>"/>
        <c:set var ="com_price" value="<%=com_price%>"/>
        <c:set var ="totalpay" value="<%=totalpay%>"/>

        <c:out value="${ori_price}"/><br><br>
        <c:out value="${com_price}"/><br><br>
        <c:out value="${totalpay}"/><br><br>

        <p>The price for stock alone 
            <fmt:formatNumber   type="currency" currencyCode="MYR" value="${ori_price}" /></p>

        <p>The price with commision
            <fmt:formatNumber  type="number" value="${com_price}"/></p>

        <p> The total price 
            <fmt:formatNumber  type="number" value="${totalpay}"/></p>

    </body>
</html>


