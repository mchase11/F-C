<%-- 
AUTHOR: MADISON CHASE
PROJECT: DISCUSSION 3 - FAHRENHEIT AND CELSIUS CONVERTER
FILE: calculatorresults.jsp
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body bgcolor="#CCCCCC">
         <%-- START OF SCRIPT --%>
         <% 
            //VARIABLE LIST
            double tempValue = 0;
            double tempSelect = 0;
            double fahr = 0;
            double celsius = 0;
            
            //FORMATS DECIMAL TO TWO PLACES
            DecimalFormat df = new DecimalFormat("#.##");
            try {
                //RETRIEVES VALUES FROM FORM
                tempValue = Double.parseDouble(request.getParameter("temperatureInput"));
                tempSelect = Double.parseDouble(request.getParameter("convertSelect"));
            } catch (Exception e) {} //CATCHES EXCEPTION

            //CALCULATES AND PRINTS OUTPUT
            if (tempSelect == 1) {
                fahr = tempValue;
                celsius = (fahr - 32) * 5/9;
            }
            if (tempSelect == 2) {
                celsius = tempValue;
                fahr = celsius * 9/5 + 32;
            }

            %> 
            <%--END SCRIPT--%>
        <%--START OF FORM --%>  
        <form name="form2" method=GET>
            <center>    
                Fahrenheit
                <BR>
                <%-- MAXLENGTH AND SIZE CONTROL THE FORM FIELD SIZE AND MAXIMUM AMOUNT
                OF CHARACTERS
                --%>
                <input id=fahrenheit maxlength=8 size=8 value=<%=df.format(fahr)%>>
                <BR>
                Celsius
                <BR>
                <input id=celsius maxlength=8 size=8 value=<%=df.format(celsius)%>>
            </center>
        </form>
        <%-- END --%>
    </body>
</html>
