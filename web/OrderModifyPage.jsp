<%-- 
    Document   : OrderModifyPage
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
        <title>Order Page</title>
    </head>
    <body>
        <h1 aling="center">Hello manager welcome to order modifying page</h1>
        <table border="2px" width="50%" >
            <thead>
            
                <th>order ID</th>
                <th>Car Id</th>
                <th>User Id</th>
                <th>order Date</th>
                <th>Status</th>
           
                <th></th>
         </thead>
           <%
                OrderDAO orderDAO = new OrderDAOImp();
                List<OrderInfo> OrderInfoList = orderDAO.getAllOrders();
                Iterator OrderInfoItr = OrderInfoList.iterator();
                while(OrderInfoItr.hasNext())
                {
               OrderInfo orderInfo = (OrderInfo)OrderInfoItr.next();
               if (orderInfo.getStatus().equals("Confirm")) {

                %>   
                <tr>
                   <td><%=orderInfo.getOrderId()%> </td> 
                    <td><%=orderInfo.getCarId()%> </td>
                      <td><%=orderInfo.getUserId()%> </td>
                     <td><%=orderInfo.getOrderDate()%> </td>
                     <td><%=orderInfo.getStatus()%> </td>
                     
                  <% System.out.println(orderInfo.getOrderId());%>
                 <td>
                <form method="post" action="mg.do">
                        <input type="text" hidden="true"name="txtcmd" value="cancel">
                        <input type="text" hidden="true"name="txtid" value="<%=orderInfo.getOrderId()%>">
                        <button type="submit" class="btn btn-link">Cancel</button>
                    </form>
                 <form method="post" action="mg.do">
                        <input type="text" hidden="true"name="txtcmd" value="accept">
                        <input type="text" hidden="true"name="txtid" value="<%=orderInfo.getOrderId()%>">
                        <button type="submit" class="btn btn-link">Confirm</button>
                    </form>
                
               
                
                </td>
            </tr>
       <%} }%>
    </table>
    </body>
</html>
