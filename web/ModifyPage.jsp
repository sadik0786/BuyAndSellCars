<%-- 
    Document   : ModifyPage
    Created on : 22 Jun, 2017, 3:01:38 PM
    Author     : Sadik
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.pro.dao.CarDAO"%>
<%@page import="com.pro.dao.CarDAOImp"%>
<%@page import="com.niit.model.CarInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Modify Car Page</title>
    </head>
    <body>
        <h1>HELLO ! Manager You Can Change Car Details</h1>
       <table border="2px" align="center" width="85%" >
            <thead>
            
                <th> car Make</th>
                <th> car Model</th>
                <th> Variant</th>
                <th> Mfg_Year</th>
                <th> CarFuel</th>
                <th> Owners</th>
                <th> Price</th>
                <th>  Kms</th>
                <th> Mileage</th>
                <th> Branch</th>
                <th> Car_Img</th>
                
                <th></th>
         </thead>
           <%
                CarDAO carDAO = new CarDAOImp();
                List<CarInfo> CarInfoList = carDAO.getAllCars();
                Iterator CarInfoItr = CarInfoList.iterator();
                while(CarInfoItr.hasNext())
                {
                    CarInfo carInfo = (CarInfo)CarInfoItr.next();
                %>   
                <tr>
                <!--<td><%=carInfo.getCarId() %> </td>-->
                <td><%=carInfo.getCarMake() %> </td>
                <td><%=carInfo.getCarModel() %> </td>
                <td><%=carInfo.getVariant() %> </td>
                <td><%=carInfo.getMfgYear() %> </td>
                <td><%=carInfo.getCarFuel() %> </td>
                <td><%=carInfo.getOwners() %> </td>
                <td><%=carInfo.getPrice() %> </td>
                <td><%=carInfo.getKms() %> </td>
                 <td><%=carInfo.getMileage() %> </td>
                 <td><%=carInfo.getBranch()%> </td>
                  
                <td><img width='160' height='120' src='images/car_images/<%=carInfo.getCarId()%>.jpg'/> </td>
                <% System.out.println(carInfo.getCarId());%>
                <td>
                    <form method="post" action="Modify.do">
                        <input type="text" hidden="true"name="txtcmd" value="del">
                        <input type="text" hidden="true"name="txtid" value="<%=carInfo.getCarId()%>">
                        <button type="submit" class="btn btn-link">Delete</button>
                    </form>
                 
                    <form method="post" action="Modify.do">
                        <input type="text" hidden="true"name="txtcmd" value="updt">
                        <input type="text" hidden="true"name="txtid" value="<%=carInfo.getCarId()%>">
                        <button type="submit" class="btn btn-link">Edit</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
         <p align="center">
            <a href="BuyingPage1.jsp">Customer Sell Car</a>
        </p>
    </body>
</html>
