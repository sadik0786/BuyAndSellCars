<%-- 
    Document   : OrderStatusPage
    Created on : 22 Jun, 2017, 3:01:38 PM
    Author     : Sadik
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.niit.model.OrderInfo"%>
<%@page import="com.pro.dao.OrderDAOImp"%>
<%@page import="java.util.List"%>
<%@page import="com.pro.dao.OrderDAO"%>
<%@page import="com.pro.dao.OrderDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Status Page</title>
    </head>
    <body>
        <h1  >Hello manager<br> welcome to order status page</h1>
        <table border="4px" width="100%" >
            <thead>
            
                <th>order ID</th>
                <th>Car Id</th>
                <th>User Id</th>
                <th>order Date</th>
                <th>Status</th>
         </thead>
           <%
                OrderDAO orderDAO = new OrderDAOImp();
                List<OrderInfo> OrderInfoList = orderDAO.getAllOrders();
                Iterator OrderInfoItr = OrderInfoList.iterator();
                while(OrderInfoItr.hasNext())
                {
               OrderInfo orderInfo = (OrderInfo)OrderInfoItr.next();
               {

                %>   
                <tr>
                   <td><%=orderInfo.getOrderId()%> </td> 
                    <td><%=orderInfo.getCarId()%> </td>
                      <td><%=orderInfo.getUserId()%> </td>
                     <td><%=orderInfo.getOrderDate()%> </td>
                     <td><%=orderInfo.getStatus()%> </td>
                     
                  <% System.out.println(orderInfo.getOrderId());%>
                
            </tr>
       <%} }%>
    </table>
    </body>
</html>
