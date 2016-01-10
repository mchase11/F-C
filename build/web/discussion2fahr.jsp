<%-- 
    Document   : discussion2
    Created on : Aug 24, 2015, 5:53:50 PM
    Author     : Madison Chase
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
    <center>
        <H3> Fahrenheit to Celsius. </H3>
        <BR>
        <form name="form" action="discussion2fahr.jsp" method=POST> Enter Fahrenheit <input name=fahrNum>
            <BR>
            <BR>
        <input type ="Submit" value="Submit">
        </form>
            <% 
                int fahrenheit = 0;
                int value = 0;
                
                boolean valueEntered = false;
                try {
                fahrenheit = Integer.parseInt(request.getParameter("fahrNum"));
                valueEntered = true;
                } catch (Exception e) {}
                
                out.println("<BR><BR> Celsius: ");
                if (valueEntered == true) {
                value = (fahrenheit - 32) * 5/9;
                out.println(value);
                }
                
                %>
    </center>
        
    
</html>

