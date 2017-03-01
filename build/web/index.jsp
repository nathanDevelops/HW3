
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="salaryForm" action="results.jsp" method="post">
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
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="submit" id="submit">
        </form>
    </body>
</html>
