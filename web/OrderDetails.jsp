<%-- 
    Document   : OrderDetails
    Created on : 22 Jun, 2017, 4:11:12 PM
    Author     : Sadik
--%>
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
       
       <ul id="ul_1">
           <li>Name: ${userInfo.getFname()}</li>
           <li>Email: ${userInfo.getEmail()}</li>
           <li>Phone: ${userInfo.getMob()}</li>
           <li>Address: ${userInfo.getAdd()}</li>
       </ul>
       
       <h3>Order Summary:</h3>
       
                <ul>
           <li>Total:
           <span class="total">
      <fmt:formatNumber value="${carDetails.price}" type="currency"/>
            </span></li></ul>           
   <br>
   
   <table border="01" width="500" hieght="75" >
        <tr>
           <th>&nbsp;&nbsp; Car Id :-</th>
           <td>${carInfo.CarId}</td>
       </tr>
       
          <tr>
           <th>&nbsp;&nbsp; Car Model :-</th>
           <td>${carInfo.carModel}</td>
          </tr>
               <tr>
           <th>&nbsp;&nbsp; Order Date :-</th>
           <td>${orderInfo.OrderDate}</td>
              </tr>
                  <tr>
           <th>&nbsp;&nbsp; Price :-</th>
           <td> <fmt:formatNumber value="${carDetails.price}" type="currency"/>
               </td></tr>
            <tr>
           <th>&nbsp;&nbsp; Confirm Order :-</th>
           <td> <a href="" class="btn btn-link" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm &nbsp;</a>
               </td> </tr>

              <tr> <th>&nbsp;&nbsp; Cancel Order :-</th>
           <td>
               <a href="" class="btn btn-link">&nbsp;&nbsp;&nbsp;&nbsp; Cancel&nbsp; &nbsp;</a>
               </td> </tr>
       
   </table>
               
    </div>
      

    </body>
</html>

 
