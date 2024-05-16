<%-- 
    Document   : Message1
    Created on : 8 May 2024, 3:56:36 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info = "Using JSP Standard Action to call JavaBeans"%>
<%@page import="java.util.Date, lab5.com.Message"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Scriplet</title>
    </head>
    <body>

        <h1>Using JSP Standard Action to call JavaBeans</h1>
        <% Message objMsg = new Message();
        
objMsg.setMsg("Welcome to CSF3107 course...!");
        %>
        <p style="color: blue;"><%= objMsg.getMsg() %></p>
        <p style="color: blue;">Current date is <%= new java.util.Date() %></p>
    </body>
</html>
