
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="salaryCalcCSS.css"/>
    </head>
    <body>
        <div class="center">   
        <form name="salaryForm" action="results.jsp" method="post">
            <h3>Simple Salary Calculator</h3>    
            <hr width="90%" color="white">
            
            <br>
        
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="number" name="hoursWorked" value="" size="10"</td>
                    </tr>
        
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="number" name="hourlyPay" value="" size="10"</td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax deduct:</td>
                        <td><input type="number" name="preDeduct" value="" size="10"</td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax deduct:</td>
                        <td><input type="number" name="postDeduct" value="" size="10"</td>
                    </tr>
                    
                </tbody>
            </table>
        
            <br>
        
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="submit" id="submit">
        </form>
        </div>
    </body>
</html>
