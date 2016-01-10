<%-- 
AUTHOR: MADISON CHASE
PROJECT: DISCUSSION 3 - FAHRENHEIT AND CELSIUS CONVERTER
FILE: calculator.jsp
--%>



<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <body bgcolor="#CCCCCC">
        <center>
        <%-- START OF FORM
             Target is used to target the calculatorresults.jsp in
             the second iframe on the index.html 
        --%>
        <form name="form" action="calculatorresults.jsp" target="bottomframe" method=GET> 
            Temperature 
            <BR>
            <%--maxlength and size controls the maximum characters and size of 
                form field.
            --%>
            <input name=temperatureInput maxlength=8 size=8>
            <BR>
            <BR>
            Convert to    
            <BR>
            <%-- Creates a selection list --%>
            <select name=convertSelect>
                <option value=1>Celsius</option>
                <option value=2>Fahrenheit</option>
            </select>
            <BR>
            <BR>
        <input type ="Submit" value="Submit">
       
        </form>
        <%-- END OF FORM --%>
        </center>
    </body>
</html>       
            
            