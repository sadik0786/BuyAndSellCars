
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
        <title>Buying Page</title>
    </head>
    <body>
        <h1>Welcome Customer You Can Buy A Car Here</h1>
       <table border="2px" align="center" width="80%" >
            <thead>
            
                <th>car Make</th>
                <th>car Model</th>
                <th>Variant</th>
                <th>Mfg_Year</th>
                <th>CarFuel</th>
                <th>Owners</th>
                <th>Price</th>
                <th>Kms</th>
                <th>Mileage</th>
                <th>Car_Img</th>
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
              
                <td><img width='160' height='120' src='images/car_images/<%=carInfo.getCarId()%>.jpg'/> </td>
<!--                <td>
                 <a href="OrderModifyPage.jsp?carId=<%=carInfo.getCarId()%>&command=del">buy</a>
                </td>-->
                <td>
                    <a href="AddOrder.do?carId=<%=carInfo.getCarId()%>&command=del"><button onclick="myFunction()">Buy</button> </a>
                </td>
            </tr>
            <%}%>
        </table>
         <p align="center">
             <a href="SellCarPage.jsp" class="btn bg-info ">sell your car here</a>
        </p>
        <script>
            function myFunction(){
                alert(" Please Confirm Your Order Within 10minuts!!\n\
                       (Buy Giving Time It Will Auto Cancel)");
            }
            </script>
    </body>
</html>
