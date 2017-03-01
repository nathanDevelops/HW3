
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        double hoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        double hourlyPay = Integer.parseInt(request.getParameter("hourlyPay"));
        double preDeduct = Integer.parseInt(request.getParameter("preDeduct"));
        double postDeduct = Integer.parseInt(request.getParameter("postDeduct"));
        
        double regularHours = 40;
        double otHours = 0;
        double otPayRate = 0;
        double otPay = 0;
        double regularPay = 0;
        double grossPay = 0;
        double taxablePay = 0;
        double taxAmount = 0;
        double postTaxPay = 0;
        double netPay = 0;
        
        if(hoursWorked > 40)
        {
            otHours = hoursWorked - 40;
            otPayRate = hourlyPay * 1.5;
            otPay = otHours * otPayRate;
            regularPay = regularHours * hourlyPay;
            grossPay = regularPay + otPay;      
        }
        else
            grossPay = hoursWorked * hourlyPay;

        taxablePay = grossPay - preDeduct;
        
        if(grossPay < 500)
        {
            taxAmount = taxablePay * .18;
        }
        else
            taxAmount = taxablePay * .22;
        
        postTaxPay = taxablePay - taxAmount;
        
        netPay = postTaxPay - postDeduct;
       

    %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked%></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preDeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
