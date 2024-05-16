<%-- 
    Document   : processTraining
    Created on : 13 May 2024, 10:09:42 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page info="Using JSP Standard Action to call JavaBeans"%>
<%@ page import="lab5.com.register" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <style>
            body {
                color: blue; /* Setting text color to blue */
            }
            h1{
                color:black;
            }
            .black-text{
                color: black;
            }
        </style>
    </head>
    <body>
        <h1>Training Registration Acknowledgement</h1>
        <%
            String icno= request.getParameter("icno");
            String name= request.getParameter("name");
            String type= request.getParameter("type");
            String student= request.getParameter("student");
            int pax= Integer.parseInt(request.getParameter("pax"));
            register register =new register();
            
            double amount=0.0;
            
            register.setIcno(icno);
            register.setName(name);
            register.setType(type);
            register.setPax(pax);
            register.setStudent(student);
            
            if(register.getStudent().equals("1"))
            {   student="Yes";
                switch(register.getType())
                {

                    case "1": 
                    type="C++ Training";
                    amount=3000*0.9;
                    break;
                     case "2": 
                    type="Java for beginner";
                    amount=3000*0.9;
                    break;
                     case "3": 
                    type="HTML5";
                    amount=2800*0.9;
                    break;
                     case "4":
                    type="Java EEE";
                    amount=5500*0.9;
                    break;
                     case "5":
                    type="Android Programming";
                    amount=3200*0.9;
                    break;
                }
            }
            else if(register.getStudent().equals("0"))
            {
                student="No";
                switch(register.getType())
                {
                    case "1": 
                    type="C++ Training";
                    amount=3000;
                    break;
                     case "2": 
                    type="Java for beginner";
                    amount=3000;
                    break;
                     case "3": 
                    type="HTML5";
                    amount=2800;
                    break;
                     case "4":
                    type="Java EEE";
                    amount=5500;
                    break;
                     case "5":
                    type="Android Programming";
                    amount=3200;
                    break;
                }
            }
            out.println("<p>IC No: "+icno+"</p>");
            out.println("<p>Name: "+name+"</p>");
            out.println("<p>Type of training: "+type+"</p>");
            out.println("<p>Number of pax: "+pax+" person/s</p>");
            out.println("<p>Student: "+student+"</p>");
            out.println("<p>Amount Due :RM "+amount+"</p>");
            %>
            <p class="black-text">&copy;2024-Nurhazirah</p>
    </body>
</html>


