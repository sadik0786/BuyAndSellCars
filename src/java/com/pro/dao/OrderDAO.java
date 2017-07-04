/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.CarInfo;
import com.niit.model.OrderInfo;
import java.util.List;

/**
 *
 * @author Sadik
 */
public interface OrderDAO {
    int addOrder(OrderInfo orderinfo);
    boolean confirmOrder(int carId);
    OrderInfo getorderById(int orderId);
    boolean cancleOrder(int orderId);
     List<OrderInfo> getAllOrders();
     boolean TimeOut(int orderId);
    
}
