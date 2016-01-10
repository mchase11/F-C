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
    <center>
    <body>
        <H3> Celsius to Fahrenheit. </H3>
        <BR>
        <form name="form" action="discussion2.jsp" method=POST> Enter Celsius <input name=celNum>
            <BR>
            <BR>
            <input type ="Submit" value="Submit">
        </form>
            <% 
                int celsius = 0;
                int value = 0;
                
                boolean valueEntered = false;
                try {
                celsius = Integer.parseInt(request.getParameter("celNum"));
                valueEntered = true;
                } catch (Exception e) {}
                
                out.println("<BR><BR> Fahrenheit: ");
                if (valueEntered == true) {
                value = celsius * 9/5 + 32;
                out.println(value);
                }
                
                %>
    </center>
        
    
</html>
