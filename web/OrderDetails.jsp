<%-- 
    Document   : OrderDetails
    Created on : 22 Jun, 2017, 4:11:12 PM
    Author     : Sadik
--%>
<%@page import="com.pro.dao.OrderDAOImp"%>
<%@page import="com.niit.model.OrderInfo"%>
<%@page import="com.pro.dao.OrderDAO"%>
<%@page import="com.pro.dao.UserDAO"%>
<%@page import="com.pro.dao.UserDAOImp"%>
<%@page import="com.niit.model.UserInfo"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.pro.dao.CarDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.niit.model.CarInfo"%>
<%@page import="com.pro.dao.CarDAOImp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order details page</title>
 <link rel="stylesheet" href="css/bootstrap.min.css"/>

 <style>
     html{
         background: burlywood;
     }
     #con{
         align-content: center;
         width: 550px;
     } 
          .total {
              color: green;
              font-weight: bold;
              font-size: 180%;
          }
             
             .page-title{
                
                 font-weight: bold;
                 font-size: 300%;
                 color: #1b6d85;
                 text-align: center;
                 margin: 10px 0px;
             }
             
             ul_1{
                 list-style-type: none;
                 padding-left: 15px;
                 margin-left:5px; 
             }
             body{
                 background: burlywood;
             height: 800px;
             margin-top: 40px;
           }
            
             table td{
                 padding: 5px;
                 color: green;
                
             }
             table th {
                 color: green;
                 padding: 5px;
                     width: 200px;
             }
             </style>
    </head>
    <body>
       
       <h1 class="page-title"> CUSTOMER ORDER INFO</h1>
       
       <div id="con" class="container">
       
       <h3>Customer Information:</h3>
       <% 
       UserDAO userDAO = new UserDAOImp();
       UserInfo userInfo = userDAO.getUserByLoginId(request.getSession().getAttribute("loginId").toString());
       %>
       <ul id="ul_1">
          
       <li>Name : <%=userInfo.getFname()%> </li>
       <li>Email : <%=userInfo.getEmail()%> </li>
       <li>Mobile :<%=userInfo.getMob()%> </li>
       <li>Address :<%=userInfo.getAdd()%> </li>
       </ul>

       </div>
       <table border="2px" align="center" width="85%" >
            <thead>
                <th>Car_id</th>
                <th> Car Make</th>
                <th> Car Model</th>
                <th> Variant</th>
                <th> Mfg_Year</th>
                <th> CarFuel</th>
                <th> Owners</th>
                <th> Price</th>
                <th> Kms</th>
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
               <td><%=carInfo.getCarId() %> </td>
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
                    <form method="post" action="ConfirmOD">
                        <input type="text" hidden="true"name="txtcmd" value="del">
                        <input type="text" hidden="true"name="txtid" value="<%=carInfo.getCarId()%>">
                        <button type="submit" class="btn btn-link">Cancel</button>
                    </form>
                 
                    <form method="post" action="ConfirmOD">
                        <input type="text" hidden="true"name="txtcmd" value="conf">
                        <input type="text" hidden="true"name="txtid" value="<%=carInfo.getCarId()%>">
                        <button type="submit" class="btn btn-link">Confirm</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
<!--        <div id="con" class="container">
       <h3>Order Summary:</h3>
      
                <ul>
           <li>Order_Date: ${userInfo.getdate()}</li>
           <li>Total Order: ${userInfo.gettotale()}</li>      
       </ul>           
   <br>
  </div>-->
           
           
   
      

    </body>
</html>

 
