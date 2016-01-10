<%-- 
AUTHOR: MADISON CHASE
PROJECT: DISCUSSION 2 - FAHRENHEIT AND CELSIUS CONVERTER
--%>


<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Converter</title>
    </head>
    <body>
    
        <H3> Celsius and Fahrenheit converter </H3>
        <BR>
        <%-- START OF FIRST FORM --%>
        <form name="form" action="calc.jsp" method=GET> 
            <fieldset>
            Temperature 
            <BR>
            <input name=tempNum>
            <BR>
            <BR>
            Convert to    
            <BR>
            <select name=item>
                <option value=1>Celsius</option>
                <option value=2>Fahrenheit</option>
            </select>
            <BR>
            <BR>
        <input type ="Submit" value="Submit">
        </fieldset>
        </form> <%-- END OF FIRST FORM --%>
        
        <%--START OF SCRIPT --%>
        <% 
            //VARIABLE VALUES
            double tempValue = 0;
            double tempSelect = 0;
            double fahr = 0;
            double celsius = 0;
            
            //DECIMAL FORMAT TO TWO PLACES
            DecimalFormat df = new DecimalFormat("#.##");
            try {
                //RETRIEVES VALUES FROM FORM
                tempValue = Integer.parseInteger(request.getParameter("tempNum"));
                tempSelect = Double.parseDouble(request.getParameter("item"));
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

            %> <%--END SCRIPT--%>
            
        <%--START OF SECOND FORM --%>  
        <form name="form2" method=GET>
            <fieldset>
            <legend>Results</legend>
            Fahrenheit
            <BR>
            <input id=fahrenheit value=<%=df.format(fahr)%>>
            <BR>
            Celsius
            <BR>
            <input id=celsius value=<%=df.format(celsius)%>>
            </fieldset>
        </form> <%-- END --%>
    </body>

</html>